# GoodWill Multi-Client RAG Validation Prompts

Use a new chat with Memory disabled and Library RAG enabled.

## Similar Device Numbers, Different Clients

```text
Compare ACME-WS-003 and PRT-PD-WS-003.
Return client, assigned user, role, RAM_GB, Storage_Type,
Performance_Risk if available, Operational_Criticality if available,
and Direct_Troubleshooting_Hint.
Do not merge the two devices.
```

Expected:

- ACME-WS-003: Acme Dental, Evan Brooks, 8GB, SSD
- PRT-PD-WS-003: Pine Ridge Police, Nina Patel, 32GB, SSD, Critical operational criticality

## Three Client Namespaces

```text
Identify the client and assigned user for:
- ACME-WS-003
- PRT-BOR-WS-003
- PRT-PD-WS-003

Keep each record separate.
```

Expected:

- ACME-WS-003: Acme Dental / Evan Brooks
- PRT-BOR-WS-003: Pine Ridge Borough / Grace Kim
- PRT-PD-WS-003: Pine Ridge Police / Nina Patel

## Cross-Client Contamination Test

```text
Does Nina Patel use Dentrix?
Use authoritative records only. Do not use ACME Dental application
data for a Pine Ridge Police user.
```

Expected: No authoritative record says Nina Patel uses Dentrix.

## Aggregate Low-RAM Test

```text
Across all imported clients, list every device where
Below_16GB_RAM is Yes. Label each result with client and exact ID.
Do not include devices where the field is No.
```

Expected ACME:

- ACME-WS-002
- ACME-WS-003
- ACME-WS-005

Expected Pine Ridge Borough:

- PRT-BOR-WS-002
- PRT-BOR-LT-004
- PRT-BOR-WS-005

Expected Pine Ridge Police:

- PRT-PD-WS-004
- PRT-PD-LT-005
