#!/usr/bin/env bash
set -euo pipefail

if [[ "${1:-}" != "--yes" ]]; then
    cat <<'EOF'
This writes active SQLite Library documents into ChromaDB.

Requirements:
- the Library synchronization helper is already installed,
- application data is backed up,
- the ChromaDB Docker volume is backed up.

Run:
  scripts/odysseus_rag_backfill.sh --yes
EOF
    exit 2
fi

docker compose exec -T odysseus python - <<'PY'
from __future__ import annotations

from core.database import Document, SessionLocal
from routes.document_helpers import (
    delete_document_from_rag,
    sync_document_to_rag,
)

db = SessionLocal()

total = 0
indexed = 0
removed = 0
failed = 0

try:
    documents = db.query(Document).order_by(Document.title).all()
    total = len(documents)

    for doc in documents:
        doc_id = str(doc.id)
        title = getattr(doc, "title", None) or "Untitled"
        content = getattr(doc, "current_content", None) or ""
        owner = getattr(doc, "owner", None)
        archived = bool(getattr(doc, "archived", False))

        if archived:
            if delete_document_from_rag(doc_id):
                removed += 1
                print(f"REMOVED ARCHIVED: {title}")
            else:
                failed += 1
                print(f"FAILED TO REMOVE: {title}")
            continue

        if sync_document_to_rag(
            doc_id=doc_id,
            content=content,
            title=title,
            owner=owner,
        ):
            indexed += 1
            print(f"INDEXED: {title}")
        else:
            failed += 1
            print(f"FAILED: {title}")
finally:
    db.close()

print()
print(f"Total records:       {total}")
print(f"Active indexed:      {indexed}")
print(f"Archived removed:    {removed}")
print(f"Failed operations:   {failed}")

if failed:
    raise SystemExit(1)
PY
