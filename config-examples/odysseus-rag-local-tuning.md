# Odysseus Local RAG Tuning Notes

These values describe the validated GoodWill lab state on 2026-07-14.

They are source-level behavior, not standard `.env` settings.

```text
Normal semantic candidates: 10
Similarity threshold: 0.30
Literal identifier scan: enabled
Owner filtering: enabled
Context result limit: 10
Atomic record target: 500 characters or fewer
```

Literal identifier handling detects tokens shaped like:

```text
PREFIX-SUBTYPE-NUMBER
```

with at least one digit, then scans active owner-scoped RAG collections for literal occurrences.

Do not automatically apply these changes to a different Odysseus revision. Review the source and recreate the local merge in a staging copy.
