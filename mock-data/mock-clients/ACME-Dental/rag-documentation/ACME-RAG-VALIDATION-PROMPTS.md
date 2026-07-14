# ACME Dental RAG Validation Prompts

Use a new chat with Memory disabled and Library RAG enabled.

## Exact Device Lookup

```text
Find the authoritative records for ACME-WS-003.
Return User, User_ID, Role, RAM_GB, Storage_Type,
Performance_Risk, Upgrade_Priority, Known_Issues,
and Direct_Troubleshooting_Hint.
Do not use Pine Ridge records or mock tickets.
```

Expected core facts:

- User: Evan Brooks
- Role: Hygienist / Operatory 1
- RAM_GB: 8
- Storage_Type: SSD
- Performance_Risk: Medium
- Upgrade_Priority: Medium

## Upgrade Priority

```text
Using only ACME authoritative device records, rank the three
strongest hardware-upgrade candidates. Return user, device,
RAM_GB, Storage_Type, Performance_Risk, and Upgrade_Priority.
```

Expected order:

1. Lucas Nguyen / ACME-WS-005
2. Maria Collins / ACME-WS-002
3. Evan Brooks / ACME-WS-003

## Printer Lookup

```text
Find ACME-PRN-003. Return name, model, location, connection,
used-by user, known issues, and direct troubleshooting hint.
```

## Outlook SOP

```text
Jordan Reed reports that Outlook asks for a password but webmail works.
Use ACME device records and ACME-SOP-OUTLOOK-PASSWORD.
Return first checks, prohibited assumptions, and escalation condition.
```
