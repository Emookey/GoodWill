# ACME Dental Mock Data

This folder contains sanitized, fake MSP-style mock data for GoodWill/Odysseus testing.

The data is intentionally fictional, but it uses realistic MSP support patterns:
- User-to-device relationships
- Workstation inventory
- Printer relationships
- Built-in recurring issues
- Helpdesk-style mock tickets
- Troubleshooting SOPs
- Reasoning-assistance fields for smaller local models

No real client data, secrets, passwords, internal IPs, Tailscale details, or production credentials should be added to this folder.

## Files

- `Client-Profile.md`
- `User-Device-Data.md`
- `Users.md`
- `Workstations.md`
- `Printer-Data.md`
- `Mock-Tickets.md`
- `SOP-Outlook-Troubleshooting.md`
- `SOP-Slow-PC-Troubleshooting.md`
- `SOP-Printer-Troubleshooting.md`

## Why `User-Device-Data.md` is structured this way

Early RAG testing showed that the small local model could identify specific ticket details, but struggled with broad inventory reasoning such as:
- determining which users had less than 16GB RAM
- comparing 4GB, 8GB, 16GB, and 32GB values reliably
- mapping user → device → specs → likely issue across multiple retrieved chunks

To compensate, `User-Device-Data.md` includes explicit derived fields:
- `RAM_GB`
- `Storage_Type`
- `Below_16GB_RAM`
- `Uses_HDD`
- `Under_Spec_Device`
- `Performance_Risk`
- `Upgrade_Priority`
- `Direct Troubleshooting Hint`

These fields reduce the amount of math/inference the model has to perform during retrieval-based testing.

## Recommended Testing Prompt

```text
Using only the attached Acme Dental mock data, answer the question.

First, read the User-Device-Data file.
Use the explicit fields:
- RAM_GB
- Below_16GB_RAM
- Storage_Type
- Uses_HDD
- Under_Spec_Device
- Performance_Risk
- Upgrade_Priority

Separate:
- Confirmed facts
- Inferences
- Assumptions
- Missing information

Do not invent users, devices, specs, IPs, credentials, or client details.
```

## RAM Reasoning Test

```text
Using only the Acme Dental User-Device-Data file, list all users whose assigned workstation has less than 16GB RAM.

Do not include users where Below_16GB_RAM is "No."
```

Expected answer:
- Maria Collins / ACME-WS-002 / 8GB RAM
- Evan Brooks / ACME-WS-003 / 8GB RAM
- Lucas Nguyen / ACME-WS-005 / 4GB RAM
