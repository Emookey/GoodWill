# ACME Dental RAG Index Package

This package converts the current ACME Dental mock data into a curated model-facing retrieval layer.

## Persistent Import

Import every Markdown file in `rag-indexes/core/`.

## Keep Outside Persistent Core RAG

- The original wide-table and narrative files
- `testing/ACME-Dental-Mock-Tickets-Atomic.md`
- Repository README files
- Test prompts and manifests

The original GitHub files remain the technician-facing source. The atomic indexes are the model-facing source.

All core records are designed to fit within Odysseus's 500-character chunk target.
