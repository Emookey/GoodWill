#!/usr/bin/env bash
set -euo pipefail

IDENTIFIER="${1:-PRT-PD-WS-003}"
OWNER="${2:-admin}"

if ! command -v docker >/dev/null 2>&1; then
    echo "ERROR: docker is not installed or not in PATH." >&2
    exit 1
fi

echo "Read-only Odysseus RAG audit"
echo "Identifier: $IDENTIFIER"
echo "Owner:      $OWNER"
echo

docker compose exec -T \
    -e AUDIT_IDENTIFIER="$IDENTIFIER" \
    -e AUDIT_OWNER="$OWNER" \
    odysseus python - <<'PY'
from __future__ import annotations

import os

from core.database import Document, SessionLocal
from src.rag_singleton import get_rag_manager

needle = os.environ["AUDIT_IDENTIFIER"]
owner = os.environ["AUDIT_OWNER"]

db = SessionLocal()
try:
    sqlite_count = db.query(Document).count()
finally:
    db.close()

rag = get_rag_manager()
if rag is None or not getattr(rag, "healthy", False):
    raise SystemExit("ERROR: RAG manager is unavailable or unhealthy.")

print(f"SQLite Library records: {sqlite_count}")
print()

print("Semantic search")
print("-" * 80)
results = rag.search(needle, k=20, owner=owner)

for rank, result in enumerate(results, start=1):
    document = result.get("document") or ""
    metadata = result.get("metadata") or {}
    print(
        f"{rank:02d} literal={needle.lower() in document.lower()} "
        f"score={result.get('similarity')} "
        f"file={metadata.get('filename')} "
        f"chunk={metadata.get('chunk_id')}"
    )

print()
print("Full owner-scoped literal scan")
print("-" * 80)

matches = []
seen = set()
scanned = 0

for lane_name, collection in rag._active_collections():
    kwargs = {"include": ["documents", "metadatas"]}
    if owner:
        kwargs["where"] = {"owner": owner}

    data = collection.get(**kwargs)
    documents = data.get("documents") or []
    metadatas = data.get("metadatas") or []

    for document, metadata in zip(documents, metadatas):
        scanned += 1
        document = document or ""
        metadata = metadata or {}

        if needle.lower() not in document.lower():
            continue

        key = (
            metadata.get("source"),
            metadata.get("chunk_id"),
            document,
        )
        if key in seen:
            continue

        seen.add(key)
        matches.append((lane_name, metadata, document))

print(f"Chunks scanned: {scanned}")
print(f"Unique literal matches: {len(matches)}")
print()

for number, (lane, metadata, document) in enumerate(matches, start=1):
    preview = " ".join(document.split())[:500]
    print(f"Match {number}")
    print(f"  Lane:   {lane}")
    print(f"  File:   {metadata.get('filename')}")
    print(f"  Source: {metadata.get('source')}")
    print(f"  Chunk:  {metadata.get('chunk_id')}")
    print(f"  Text:   {preview}")
    print()
PY
