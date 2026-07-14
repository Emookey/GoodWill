# Odysseus Library RAG Implementation

Updated: 2026-07-14

## Scope

This document records the local GoodWill lab changes that made persistent Odysseus Library retrieval functional for sanitized mock clients.

These notes describe a version-specific lab customization. They are not an upstream-supported installation recipe.

## Final Data Path

```text
Odysseus Library
    → SQLite document record
    → document synchronization helper
    → ChromaDB chunks
    → normal semantic search
    + owner-scoped literal identifier scan
    → authoritative-source ordering
    → Qwen context
```

## Initial Failure

Files imported through the Odysseus UI appeared in the Library but were found only in SQLite.

The ChromaDB service itself was healthy. `http://localhost:8000` in the ChromaDB container banner referred to the ChromaDB container itself and was not the fault. Odysseus correctly reached the service using the Docker hostname `chromadb:8000`.

## Library Synchronization Repair

The local Odysseus source revision differed from the pending upstream Library synchronization patch, so a complete file replacement and direct `git apply` were rejected.

The fix was merged into a temporary staging copy and validated before deployment.

Production areas affected:

- `routes/document_helpers.py`
- `routes/document_routes.py`
- `static/app.js`
- `static/index.html`

Implemented behavior:

- create and import operations synchronize documents into RAG,
- edit and restore operations re-index current content,
- archive and delete operations remove indexed chunks,
- the Library RAG UI control is available,
- existing SQLite-only documents can be backfilled.

Backups were created for:

- application data,
- the ChromaDB Docker volume,
- the original source files,
- each later `chat_processor.py` change.

## One-Time Backfill

The synchronization repair handles future lifecycle events. Existing SQLite documents required a one-time backfill using `sync_document_to_rag()`.

The repository includes:

```text
scripts/odysseus_rag_backfill.sh
```

Run it only after backups and only against a patched Odysseus deployment.

## Retrieval Tuning

The normal document retrieval path was locally changed from:

```text
k=5
RAG_SIMILARITY_THRESHOLD=0.35
```

to:

```text
k=10
RAG_SIMILARITY_THRESHOLD=0.30
```

This allowed more near-threshold structured records to survive the initial semantic pass.

## Literal Identifier Retrieval

A second semantic query was not sufficient because it could still omit literal matches.

The final local behavior performs a full owner-scoped scan across active RAG collections when a prompt contains a hyphenated identifier with a digit.

Examples:

```text
ACME-WS-003
ACME-PRN-003
PRT-BOR-WS-003
PRT-PD-WS-003
PRT-PD-MOCK-004
```

Literal matches are:

1. deduplicated across embedding lanes,
2. ranked by source authority,
3. expanded with nearby chunks when appropriate,
4. placed before ordinary semantic results,
5. allowed to bypass the semantic threshold,
6. merged into the existing ten-chunk context limit.

Source priority favors:

```text
User-Device-RAG-Index
→ User-Device-Data
→ Client knowledge/resource index
→ Ticket history
→ Mock tickets
→ Answer keys
```

Answer keys should not normally be indexed.

## Why Atomic Indexes Were Still Required

Literal retrieval successfully found every occurrence of a workstation ID, but wide tables still spread related fields across multiple chunks.

A short `DEVICE_RECORD` test returned every requested field correctly. This established that the model could use RAG when the record was self-contained.

The permanent model-facing data layer therefore uses atomic records designed to fit within the configured chunk target.

See:

- `docs/RAG_INDEX_FORMAT_GUIDE.md`
- `mock-data/mock-clients/ACME-Dental/rag-indexes/`
- `mock-data/mock-clients/Pine-Ridge-Township/rag-indexes/`

## Validation Results

Validated examples:

- `ACME-WS-003` resolves to Evan Brooks and the ACME Dental record set.
- `PRT-BOR-WS-003` resolves to Grace Kim and the Borough record set.
- `PRT-PD-WS-003` resolves to Nina Patel and the Police record set.
- Comparing ACME and Pine Ridge devices preserves separate client facts.
- Qwen returns complete device fields when the matching atomic records are delivered.

## Upgrade and Rollback Notes

Before any Odysseus upgrade:

1. preserve the current patched source,
2. preserve application data,
3. back up the ChromaDB volume,
4. review upstream changes,
5. assume the local merge may need to be recreated,
6. rerun exact-ID and multi-client validation prompts.

Do not blindly overwrite a newer Odysseus checkout with these older patched files.
