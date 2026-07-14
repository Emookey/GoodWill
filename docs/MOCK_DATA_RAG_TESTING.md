# Mock Data and RAG Testing Notes

Updated: 2026-07-14

## Purpose

This document records the current GoodWill/Odysseus mock-data and retrieval testing approach.

The goal is to determine whether a small local model can use sanitized MSP-style reference material to:

- identify the correct client, user, and device,
- retrieve explicit hardware and risk fields,
- apply relevant SOPs and permission boundaries,
- compare multiple clients without mixing their records,
- produce technician-facing troubleshooting output,
- draft client-facing updates,
- distinguish confirmed facts from hypotheses,
- avoid invented client information.

## Current Status

The persistent RAG system is now functional for the current mock-data workload.

Validated behavior includes:

- ACME Dental single-client lookups,
- Pine Ridge Borough and Police lookups,
- exact workstation and printer identifier retrieval,
- cross-client comparison without namespace mixing,
- correct use of self-contained device records,
- Library documents being available without attaching them to every chat.

The remaining work is tuning and measurement rather than basic RAG enablement.

## Problems Identified During Testing

### Library synchronization

Odysseus displayed imported files in its Library because they existed in SQLite, but older Library actions did not keep the ChromaDB document index synchronized.

Observed state:

```text
SQLite: document present
ChromaDB: document absent
```

A local compatibility merge of the upstream Library synchronization work was applied, followed by a one-time backfill of existing Library documents.

### Retrieval ranking

The normal chat path originally retrieved five candidates and applied a `0.35` similarity cutoff. Exact asset identifiers could exist in ChromaDB but rank below the top five.

Local tuning:

```text
RAG result count: 5 → 10
Similarity threshold: 0.35 → 0.30
```

### Exact identifiers

A semantic search for identifiers such as `PRT-PD-WS-003` could prioritize mock tickets or ticket history instead of the authoritative user/device record.

The local retrieval path now:

1. detects identifier-shaped tokens,
2. performs an owner-scoped literal scan,
3. ranks authoritative RAG indexes before tickets,
4. includes nearby chunks when useful,
5. merges literal and semantic results,
6. preserves the existing context limit.

### Wide Markdown tables

Wide tables were frequently split across chunks. The model might receive a row without its header or retrieve several duplicate references with different purposes.

A self-contained test record proved that Qwen could return all expected fields when the complete record reached the prompt.

## Data Design Decision

The repository now has two data layers.

### Human reference layer

The existing client profiles, inventories, tickets, SOPs, and tables remain useful for technicians and dataset maintenance.

They are not the preferred persistent Odysseus corpus.

### Model-facing RAG layer

The `rag-indexes/core/` folders contain short atomic records. Each block:

- repeats the exact client and object identifier,
- has one authority scope,
- is independently understandable,
- avoids wide tables,
- keeps explicit reasoning-assistance fields,
- is designed to fit within the 500-character chunk target.

Typical device data is separated into:

- user assignment,
- hardware,
- performance risk,
- platform,
- applications,
- known issues,
- direct troubleshooting guidance.

## Source Authority

Use these sources in this order:

1. User/device RAG index for identity, assignment, hardware, risk, and direct device guidance.
2. Permission index for access boundaries.
3. Client resource or printer index for services and peripherals.
4. SOP index for troubleshooting order and escalation.
5. Optional ticket history for precedent only.
6. Mock tickets only when actively testing.
7. Answer keys never during blind testing.

Ticket history is not proof of a current root cause. A mock ticket is not authoritative device inventory.

## Client Namespaces

```text
ACME-*       → Acme Dental Group
PRT-BOR-*    → Pine Ridge Township Borough Building
PRT-PD-*     → Pine Ridge Township Police Department
```

When an exact identifier is present, resolve the namespace before retrieving facts.

Do not merge similarly numbered devices across clients.

## Recommended Test State

- Library RAG: enabled
- Memory: disabled for clean retrieval tests
- Core atomic RAG indexes: imported
- Old wide-table Library copies: archived or excluded
- Mock tickets: supplied manually or imported temporarily
- Mock ticket answer keys: excluded
- Real client data: prohibited

## Recommended Prompt Pattern

```text
Find the authoritative record for <EXACT_ID>.

Use only records from the matching client namespace.
Return the requested fields exactly as stored.
Do not infer missing values.
Name the source record used.
```

For troubleshooting:

```text
Use the authoritative client, device, resource, and SOP records.

Return:
- Confirmed facts
- Missing information
- Business impact
- Likely causes
- Safe first actions
- Do not do
- Escalation trigger
- Internal ticket note
- Client-facing update
```

## Current Conclusion

The local model should not be treated as a database engine, but it can now use a curated retrieval database reliably enough for mock MSP workflow testing.

The successful pattern is:

```text
Human-readable source material
        ↓
Curated atomic RAG records
        ↓
SQLite Library storage
        ↓
ChromaDB synchronization
        ↓
Literal ID plus semantic retrieval
        ↓
Small local model
        ↓
Technician-assist response
```

The next stage is a repeatable test matrix that measures retrieval accuracy, unsupported claims, client isolation, SOP compliance, and response time.
