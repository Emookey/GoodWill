# Odysseus RAG Update - 2026-07-14

## Outcome

Persistent Library RAG is functional for the current sanitized ACME Dental and Pine Ridge Township mock-data sets.

## Resolved

- Library records existed in SQLite but were absent from ChromaDB.
- The upstream synchronization change did not apply cleanly to the installed source revision.
- Existing documents required a one-time vector backfill.
- Exact asset identifiers ranked below generic semantic chunks.
- Five-result retrieval omitted correct records.
- Wide tables fragmented user/device facts.
- Duplicate ticket and history references outranked authoritative inventory.
- ACME and Pine Ridge required explicit namespace isolation.

## Local Odysseus Behavior

```text
RAG candidates: 10
Similarity threshold: 0.30
Owner-scoped literal scan: enabled
Authoritative-source ordering: enabled
Neighbor expansion: enabled
```

## Data Added

- Six ACME Dental core RAG indexes.
- Ten Pine Ridge Township core RAG indexes.
- Two optional Pine Ridge history indexes.
- Multi-client authority and validation files.
- Atomic ACME mock tickets for controlled testing.
- RAG auditing, backfill, and index-validation scripts.

## Verified

- Exact device and printer lookups.
- User-to-device and hardware retrieval.
- Permission and SOP retrieval.
- Single-client ticket-style prompts.
- ACME versus Pine Ridge comparisons.
- Separation of ACME, Borough, and Police namespaces.

## Remaining Work

- Build a repeatable scoring worksheet.
- Measure unsupported claims and source selection.
- Test additional local models.
- Review the local source merge during every Odysseus upgrade.
