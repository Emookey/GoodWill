# Odysseus RAG Import Guide

## Recommended Core Import

Import every Markdown file in:

```text
rag-indexes/core/
```

These are the normal persistent knowledge files for Pine Ridge Township.

## Optional Import

The files in:

```text
rag-indexes/optional-history/
```

contain historical precedents. Import them only when the model should compare a current issue with previous resolutions. They explicitly state that history is not authoritative for current device specifications or root cause.

## Do Not Import for Normal Use

Do not import the original wide-table files as part of the normal RAG corpus:

- Human-readable `User-Device-Data.md`
- Human-readable `Client-Knowledge-Base.md`
- Human-readable `Ticket-History.md`
- `Mock-Tickets.md`
- `Mock-Ticket-Answer-Key.md`
- Repository README or update notes

Keep those files in GitHub for technicians and dataset maintenance.

## Why These Indexes Work Better

The indexes use short atomic records. A single device is represented by:

1. `DEVICE_ASSIGNMENT_RECORD`
2. `DEVICE_HARDWARE_RECORD`
3. `DEVICE_APPLICATION_RECORD`
4. `DEVICE_KNOWN_ISSUE_RECORD`
5. `DEVICE_DIRECT_HINT_RECORD`

Each record repeats the exact `Device_ID`, remains independently understandable, and avoids wide Markdown tables that Odysseus may split across chunks.

## Recommended Odysseus Settings

- Library RAG: enabled
- Memory: disabled during clean RAG testing
- Exact-ID literal rescue: enabled
- Core indexes: imported
- Optional history: disabled for basic inventory tests
- Answer keys: never imported during blind tests

## Source Authority Order

1. User-Device-RAG-Index for user, role, hardware, risk, and device hints
2. Permission-RAG-Index for access boundaries
3. Client-Resource-RAG-Index for applications, shares, services, and peripherals
4. SOP-RAG-Index for procedure and escalation
5. Ticket-History-RAG-Index for precedent only

## Updating the Dataset

Treat the human-readable files as the editorial source. When a user, device, service, permission, or SOP changes, update the corresponding atomic RAG record at the same time. Do not leave contradictory active records in the Library.
