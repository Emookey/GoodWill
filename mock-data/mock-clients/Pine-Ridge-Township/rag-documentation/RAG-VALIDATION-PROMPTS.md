# Pine Ridge Township RAG Validation Prompts

Use a new chat with Memory disabled and Library RAG enabled.

## Exact Device Lookup

```text
Find the authoritative records for PRT-PD-WS-003.
Return Assigned_User, Role, RAM_GB, Storage_Type,
Operational_Criticality, Direct_Troubleshooting_Hint,
and the source filename. Do not use ticket history.
```

Expected core facts:

- Assigned_User: Nina Patel
- Role: Dispatcher
- RAM_GB: 32
- Storage_Type: SSD
- Operational_Criticality: Critical

## Hardware Upgrade Lookup

```text
Using only authoritative device records, identify the two
highest-priority Borough Building hardware upgrade candidates.
Return Device_ID, Assigned_User, RAM_GB, Storage_Type,
Performance_Risk, and Upgrade_Priority.
```

Expected:

1. PRT-BOR-WS-005 / Jenna Price
2. PRT-BOR-WS-002 / Daniel Ortiz

## Permission Boundary

```text
Can PRT-BOR-USER-003 be granted access to
\\PR-TW-FS01\PoliceRecords without additional approval?
Use only the authoritative permission index.
```

Expected: No.

## Police CAD Triage

```text
PRT-PD-WS-003 has a frozen CAD client, but the backup dispatcher
station and VoIP console are working. Use the device and SOP records.
Return priority, first actions, prohibited actions, and escalation trigger.
```

Expected: High, not yet Critical; preserve details and check the local client before server-wide action.

## Historical Precedent Test

Import optional history, then ask:

```text
Find historical precedent for PRT-PD-WS-003 CAD freezing.
State clearly that the historical cause is not proof of the current cause.
```
