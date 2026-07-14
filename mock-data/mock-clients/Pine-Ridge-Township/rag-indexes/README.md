# Pine Ridge Township RAG Index Package

This package is the model-facing retrieval layer for the Pine Ridge Township mock dataset.

## Main Use

Import the ten files in `rag-indexes/core/` into Odysseus. These files replace the wide human-readable tables as the model's primary persistent knowledge.

## Optional History

`rag-indexes/optional-history/` contains resolved-ticket precedents. These files are useful for pattern comparison but are not authoritative for current hardware, permissions, or root cause.

## Human Documentation

The original mock-data package remains the technician-facing reference. Keep it in GitHub, but do not normally import its large tables, mock tickets, or answer keys into the persistent RAG corpus.

Read `documentation/ODYSSEUS-RAG-IMPORT-GUIDE.md` before importing.
