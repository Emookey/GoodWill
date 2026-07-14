#!/usr/bin/env python3
"""Validate GoodWill atomic RAG index files.

Checks:
- atomic record size
- matching END markers
- duplicate Record_ID values
- answer-key files under core RAG
- obvious namespace mismatches

This script reads files only.
"""

from __future__ import annotations

import argparse
import re
import sys
from collections import defaultdict
from pathlib import Path


RECORD_START = re.compile(r"^[A-Z][A-Z0-9_]*(?:_RECORD|_RULE)$")
RECORD_ID = re.compile(r"^Record_ID:\s*(.+)$", re.MULTILINE)
CLIENT_ID = re.compile(r"^Client_ID:\s*(.+)$", re.MULTILINE)
OBJECT_ID = re.compile(
    r"^(?:Device_ID|User_ID|Printer_ID|Ticket_ID|SOP_ID):\s*(.+)$",
    re.MULTILINE,
)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "paths",
        nargs="*",
        default=["mock-data/mock-clients", "mock-data/multi-client-rag"],
        help="Files or directories to scan.",
    )
    parser.add_argument(
        "--max-characters",
        type=int,
        default=500,
        help="Maximum atomic record size. Default: 500.",
    )
    return parser.parse_args()


def markdown_files(inputs: list[str]) -> list[Path]:
    output: list[Path] = []
    for item in inputs:
        path = Path(item)
        if not path.exists():
            continue
        if path.is_file() and path.suffix.lower() == ".md":
            output.append(path)
        elif path.is_dir():
            output.extend(path.rglob("*.md"))
    return sorted(set(output))


def record_blocks(text: str):
    for raw in re.split(r"\n\s*\n", text):
        block = raw.strip()
        if not block:
            continue
        first = block.splitlines()[0].strip()
        if RECORD_START.fullmatch(first):
            yield first, block


def expected_namespace(client_id: str) -> str | None:
    if client_id == "ACME-DENTAL":
        return "ACME-"
    if client_id == "PRT-BOR":
        return "PRT-BOR-"
    if client_id == "PRT-PD":
        return "PRT-PD-"
    return None


def main() -> int:
    args = parse_args()
    files = markdown_files(args.paths)

    if not files:
        print("ERROR: no Markdown files found.", file=sys.stderr)
        return 2

    errors: list[str] = []
    warnings: list[str] = []
    ids: dict[str, list[str]] = defaultdict(list)
    record_count = 0
    maximum = 0

    for path in files:
        lowered = str(path).lower().replace("\\", "/")
        if "/rag-indexes/core/" in lowered and "answer-key" in path.name.lower():
            errors.append(f"{path}: answer key is inside core RAG.")

        text = path.read_text(encoding="utf-8")

        for record_type, block in record_blocks(text):
            record_count += 1
            size = len(block)
            maximum = max(maximum, size)

            if size > args.max_characters:
                errors.append(
                    f"{path}: {record_type} is {size} characters "
                    f"(limit {args.max_characters})."
                )

            expected_end = f"END_{record_type}"
            if block.splitlines()[-1].strip() != expected_end:
                errors.append(
                    f"{path}: {record_type} does not end with {expected_end}."
                )

            id_match = RECORD_ID.search(block)
            if id_match:
                ids[id_match.group(1).strip()].append(str(path))

            client_match = CLIENT_ID.search(block)
            namespace = (
                expected_namespace(client_match.group(1).strip())
                if client_match
                else None
            )

            if namespace:
                for object_match in OBJECT_ID.finditer(block):
                    object_id = object_match.group(1).strip()
                    if (
                        object_id not in {"Not applicable", "Not_Found"}
                        and re.search(r"\d", object_id)
                        and not object_id.startswith(namespace)
                    ):
                        warnings.append(
                            f"{path}: {object_id} does not match "
                            f"client namespace {namespace}."
                        )

    for record_id, paths in sorted(ids.items()):
        if len(paths) > 1:
            errors.append(
                f"Duplicate Record_ID {record_id}: " + ", ".join(paths)
            )

    print(f"Files scanned: {len(files)}")
    print(f"Atomic records: {record_count}")
    print(f"Maximum record size: {maximum} characters")
    print(f"Warnings: {len(warnings)}")
    print(f"Errors: {len(errors)}")

    for warning in warnings:
        print(f"WARNING: {warning}")

    for error in errors:
        print(f"ERROR: {error}", file=sys.stderr)

    return 1 if errors else 0


if __name__ == "__main__":
    raise SystemExit(main())
