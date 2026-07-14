# GoodWill Multi-Client RAG Testing

This folder contains the shared authority and validation material for testing ACME Dental and Pine Ridge Township in the same Odysseus Library.

## Import Order

1. Import `GoodWill-Multi-Client-RAG-Authority-Index.md`.
2. Import every Markdown file under:
   - `mock-data/mock-clients/ACME-Dental/rag-indexes/core/`
   - `mock-data/mock-clients/Pine-Ridge-Township/rag-indexes/core/`
3. Keep Memory disabled during clean retrieval tests.
4. Keep mock ticket answer keys outside persistent RAG.
5. Archive or exclude old wide-table Library copies.

## Namespaces

```text
ACME-*       Acme Dental Group
PRT-BOR-*    Pine Ridge Township Borough Building
PRT-PD-*     Pine Ridge Township Police Department
```

Use `MULTI-CLIENT-VALIDATION-PROMPTS.md` to test exact lookups, similarly numbered devices, client isolation, and aggregate queries.
