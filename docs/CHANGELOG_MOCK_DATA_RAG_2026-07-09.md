# Changelog - Mock Data, RAG Testing, Remote Desktop

Date: 2026-07-09

## Added

- Added lightweight remote desktop notes for Xfce + xrdp over private/Tailscale access.
- Added Odysseus Error 503 workspace endpoint troubleshooting notes.
- Added mock-data/RAG testing notes.
- Added ACME Dental mock client dataset.
- Added reasoning-assisted `User-Device-Data.md` format.
- Added mock user/device/printer/ticket/SOP files for local model testing.

## Validated

- Remmina on Arch Linux can RDP into the server desktop.
- The server remains usable as a Docker/Ollama/Odysseus host with a lightweight GUI management layer.
- Odysseus can reach Ollama through `host.docker.internal`.
- Direct `/v1/chat/completions` calls from the Odysseus container to Ollama succeed.
- Odysseus `Error 503` was traced to the active workspace/chat endpoint being set incorrectly in the UI.
- Updating the active workspace endpoint restored chat responses.
- Reasoning-assisted mock-data fields improved local model behavior.

## Observed Model Behavior

The small local model is useful for specific MSP-style ticket prompts, especially when the question names a user, application, or symptom.

The model struggles more with broad inventory questions that require scanning all devices, comparing values, and mapping relationships across multiple retrieved chunks.

Examples of weaker reasoning:

- failing to identify all users below 16GB RAM
- confusing exactly 16GB with less than 16GB
- missing 4GB RAM when retrieved context was incomplete

## Response

Mock data now includes explicit reasoning-assistance fields:

- `RAM_GB`
- `Storage_Type`
- `Below_16GB_RAM`
- `Uses_HDD`
- `Under_Spec_Device`
- `Performance_Risk`
- `Upgrade_Priority`

## Current Recommendation

Continue using mock data only.

Do not ingest real client data until:

- access controls are reviewed
- audit/logging expectations are defined
- data handling rules are documented
- the retrieval workflow is better understood
- stronger models and/or structured lookup tools are evaluated
