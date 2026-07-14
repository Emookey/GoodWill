# Odysseus ACME Dental RAG Import Guide

## Core Files

Import all files in `rag-indexes/core/`.

The most important inventory file is:

```text
ACME-Dental-User-Device-RAG-Index.md
```

It contains separate atomic records for user assignment, shared resources, hardware, risk, platform, applications, known issues, and direct troubleshooting guidance.

## Recommended Test State

- Library RAG: enabled
- Memory: disabled for clean tests
- ACME core files: imported
- Pine Ridge core files: imported only when testing multiple clients
- Mock tickets: not persistently imported
- Original wide tables: archived or excluded from RAG

## Client Isolation

Use exact namespaces:

- `ACME-*` means Acme Dental
- `PRT-BOR-*` means Pine Ridge Borough
- `PRT-PD-*` means Pine Ridge Police

Do not combine records between namespaces unless the prompt explicitly requests a comparison.

## Updating Data

Treat the human-readable GitHub files as the editorial source. Update the matching atomic records whenever the source inventory, printer, resource, or SOP changes.
