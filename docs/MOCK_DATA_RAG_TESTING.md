# Mock Data and RAG Testing Notes

Updated: 2026-07-09

## Purpose

This document records the current GoodWill/Odysseus mock-data testing approach.

The goal is to test whether a local AI assistant can use MSP-style reference material to support technician workflows, including:

- identifying the affected user
- identifying the assigned workstation
- referencing hardware specs
- connecting symptoms to known issues
- producing technician-facing troubleshooting steps
- producing client-facing updates
- asking for missing information
- avoiding hallucinated client details

## Current Finding

The small local `qwen2.5:3b-project` model can provide useful ticket-style responses when the prompt points to a specific user, application, or symptom.

Example behavior that worked reasonably well:

- The model associated Maria Collins with QuickBooks slowness.
- It identified relevant workstation limitations such as 8GB RAM and HDD storage when those details were retrieved.
- It produced decent troubleshooting steps and a client-facing update.
- It correctly connected Jordan Reed with the front desk printer workflow when the printer data was retrieved.

However, the same model struggled with broad inventory reasoning, especially when it had to:

- scan all devices
- compare RAM values
- map user → device → specs
- infer that 4GB and 8GB are less than 16GB
- avoid including 16GB as "less than 16GB"

## Interpretation

This appears to be a combination of:

1. Small-model reasoning limits.
2. RAG retrieval limits.
3. Chunk-level context differences between prompts.
4. Numeric comparison weakness.
5. Cross-file relationship weakness.

The model may answer a specific ticket correctly while failing a broader inventory question because the retrieval layer gives it different chunks for each prompt.

## Data Formatting Strategy

For now, mock client data should be written in a "reasoning-assisted" format.

Instead of relying on the model to infer everything, structured files should include explicit derived fields such as:

- `RAM_GB`
- `Storage_Type`
- `Below_16GB_RAM`
- `Uses_HDD`
- `Under_Spec_Device`
- `Performance_Risk`
- `Upgrade_Priority`
- `Direct Troubleshooting Hint`

This makes the data easier for smaller local models to use.

## Recommended Data Pattern

Use both detailed records and relationship indexes.

Recommended structure:

```text
mock-data/
└── ACME-Dental/
    ├── Client-Profile.md
    ├── User-Device-Data.md
    ├── Users.md
    ├── Workstations.md
    ├── Printer-Data.md
    ├── Mock-Tickets.md
    ├── SOP-Outlook-Troubleshooting.md
    ├── SOP-Slow-PC-Troubleshooting.md
    └── SOP-Printer-Troubleshooting.md
```

Important relationships:

```text
Client → Site → User → Device → Software → Printer → Issue → SOP
```

## Recommended Prompt Style

Prompts should ask the model to label its evidence:

```text
Using only the mock data, answer the ticket.

For each major point, label it as:
- Confirmed Fact
- Inference
- Assumption
- Missing Information

Then provide:
1. Affected user
2. Assigned device
3. Relevant specs
4. Likely causes
5. Troubleshooting steps
6. Escalation criteria
7. Internal ticket note
8. Client-facing update
```

## Current Conclusion

The current local model is useful for early mock MSP workflow testing, but it should not be trusted as a database, spreadsheet, or exact inventory query engine.

Near-term strategy:

- Use structured mock data.
- Add reasoning-assistance fields.
- Keep prompts specific.
- Ask for confirmed facts versus assumptions.
- Use the LLM for explanation and ticket drafting.
- Use structured data/scripts/databases for exact inventory reporting later.

Long-term strategy:

- Test larger models after hardware upgrades.
- Keep clean data formatting even with larger models.
- Treat the LLM as a technician-assist layer, not an autonomous remediation system.
