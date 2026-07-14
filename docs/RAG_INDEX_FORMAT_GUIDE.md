# RAG Index Format Guide

Updated: 2026-07-14

## Purpose

The model-facing corpus should be treated as a curated retrieval database, not a general document archive.

Human documentation may use tables and narrative sections. Persistent RAG records should be atomic, explicit, and independently understandable.

## Core Rules

Each atomic record should:

- contain one record type,
- repeat the exact client and object identifier,
- state its authority scope,
- contain all fields needed for that narrow lookup,
- avoid references such as "same as above",
- avoid wide Markdown tables,
- remain at or below 500 characters when practical,
- end with a matching `END_<RECORD_TYPE>` marker.

## Example

```text
DEVICE_HARDWARE_RECORD
Record_ID: PRT_PD_WS_003_HARDWARE
Client_ID: PRT-PD
Device_ID: PRT-PD-WS-003
OS: Windows 11 Pro
RAM_GB: 32
Storage: 1TB SSD
Storage_Type: SSD
END_DEVICE_HARDWARE_RECORD
```

A separate record should carry risk data:

```text
DEVICE_RISK_RECORD
Record_ID: ACME_WS_002_RISK
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-002
Below_16GB_RAM: Yes
Uses_HDD: Yes
Under_Spec_Device: Yes
Performance_Risk: High
Upgrade_Priority: Medium
END_DEVICE_RISK_RECORD
```

## Recommended Record Families

### Client

- `CLIENT_RECORD`
- `SUPPORT_WINDOW_RECORD`
- `WORKFLOW_RECORD`
- `CLIENT_ISOLATION_RULE`

### User and device

- `USER_ASSIGNMENT_RECORD`
- `USER_RESOURCE_RECORD`
- `DEVICE_ASSIGNMENT_RECORD`
- `DEVICE_HARDWARE_RECORD`
- `DEVICE_RISK_RECORD`
- `DEVICE_PLATFORM_RECORD`
- `DEVICE_APPLICATION_RECORD`
- `DEVICE_KNOWN_ISSUE_RECORD`
- `DEVICE_DIRECT_HINT_RECORD`

### Resources and permissions

- `APPLICATION_RECORD`
- `RESOURCE_RECORD`
- `SHARED_RESOURCE_RECORD`
- `ACCESS_RULE`
- `PERMISSION_WORKFLOW`

### Printers

- `PRINTER_CONFIGURATION_RECORD`
- `PRINTER_USAGE_RECORD`
- `PRINTER_KNOWN_ISSUE_RECORD`
- `PRINTER_DIRECT_HINT_RECORD`

### Procedures

- `SOP_TRIGGER_RECORD`
- `SOP_ACTION_RECORD`
- `SOP_GUARDRAIL_RECORD`
- `SOP_DECISION_RECORD`
- `ESCALATION_RULE`

### History and tests

- `HISTORY_RECORD`
- `MOCK_TICKET_RECORD`
- `MOCK_TICKET_CONTEXT_RECORD`

History is precedent only. Mock tickets are test inputs, not authoritative inventory.

## Namespace Rules

Identifiers must clearly indicate the client:

```text
ACME-*       Acme Dental
PRT-BOR-*    Pine Ridge Borough
PRT-PD-*     Pine Ridge Police
```

Never reuse an exact identifier for another client.

## Authority Rules

Each client should have a RAG authority index that tells the model:

- which file owns device facts,
- which file owns printer facts,
- which file owns permissions,
- which file owns SOP actions,
- which files are historical or testing-only.

This prevents a ticket excerpt from replacing authoritative inventory.

## Import Strategy

Persistent core Library:

```text
rag-indexes/core/
```

Optional:

```text
rag-indexes/optional-history/
```

Keep outside persistent core RAG:

- original wide tables,
- repository notes,
- mock ticket answer keys,
- temporary diagnostics,
- backups,
- real client information.

## Validation

Run:

```bash
python3 scripts/validate_rag_indexes.py
```

The validator checks:

- maximum atomic block size,
- duplicate `Record_ID` values,
- prohibited answer-key files inside core RAG,
- malformed record endings,
- basic client namespace consistency.
