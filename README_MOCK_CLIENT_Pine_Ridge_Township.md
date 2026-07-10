# Pine Ridge Township Mock MSP Dataset

This package contains fictional, public-safe mock data for testing the GoodWill / Odysseus local MSP assistant.

The two clients belong to the same fictional municipal organization:

- Pine Ridge Township - Borough Building
- Pine Ridge Township - Police Department

No real client information, credentials, IP addresses, government records, police records, or operational secrets are included.

## Design Goal

The dataset is intentionally explicit so a smaller local model does not need to infer basic relationships or perform unnecessary comparisons.

Important reasoning-assistance fields include:

- `RAM_GB`
- `Below_16GB_RAM`
- `Storage_Type`
- `Uses_HDD`
- `Under_Spec_Device`
- `Performance_Risk`
- `Upgrade_Priority`
- `Operational_Criticality`
- `Allowed_Downtime`
- `Direct_Troubleshooting_Hint`
- `Business_Impact`
- `Required_First_Action`
- `Do_Not_Do`
- `Escalation_Trigger`

## Folder Structure

```text
mock-clients/
└── pine-ridge-township/
    ├── Township-Client-Index.md
    ├── TEST-PROMPTS.md
    ├── shared-sops/
    │   ├── SOP-Standard-Ticket-Triage.md
    │   ├── SOP-Account-Lockout-and-MFA.md
    │   ├── SOP-Printer-Troubleshooting.md
    │   ├── SOP-Shared-Drive-Access.md
    │   └── SOP-Security-Alert-Triage.md
    ├── borough-building/
    │   ├── Client-Knowledge-Base.md
    │   ├── User-Device-Data.md
    │   ├── Ticket-History.md
    │   ├── Mock-Tickets.md
    │   ├── Mock-Ticket-Answer-Key.md
    │   └── SOPs.md
    └── police-department/
        ├── Client-Knowledge-Base.md
        ├── User-Device-Data.md
        ├── Ticket-History.md
        ├── Mock-Tickets.md
        ├── Mock-Ticket-Answer-Key.md
        └── SOPs.md
```

## Recommended Testing Method

1. Ingest the client index, the relevant client knowledge base, the relevant user-device file, and the SOPs.
2. Keep each `Mock-Ticket-Answer-Key.md` file outside the model's knowledge base during blind testing.
3. Paste one ticket from `Mock-Tickets.md` into a fresh chat.
4. Ask the model to provide:
   - confirmed facts,
   - likely causes,
   - clarifying questions,
   - safe troubleshooting steps,
   - stop conditions,
   - escalation criteria,
   - an internal ticket note,
   - a client-facing update,
   - confidence and risk ratings.
5. Compare the answer against the answer key.
6. Record incorrect assumptions, invented facts, skipped safety checks, or unnecessary hardware recommendations.

## Important Safety Rule

The police department files are fictional. Even in a real implementation, the model should never autonomously alter evidence, dispatch records, criminal justice data, security controls, or user permissions.
