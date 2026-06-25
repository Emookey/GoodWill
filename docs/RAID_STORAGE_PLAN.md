# Future RAID / Storage Expansion Plan

This is a future optional upgrade package. The current AI workspace should stay on the stable direct-connected Ubuntu SSD until PSU/GPU testing is complete.

## Current RAID card note

An unknown/newer Dell PERC-family card was previously installed and removed during troubleshooting. It is not planned for reuse unless exact part number and compatibility are confirmed.

Current recommendation:

- Do not reinstall the previous unknown RAID card during GPU/PSU testing.
- Treat it as a spare/unknown part.
- Use a T420-era PERC adapter if front-bay storage is added later.

## Recommended controller options

Preferred T420-era options:

- Dell PERC H310 Adapter
- Dell PERC H710 Adapter
- Dell PERC H710P Adapter

Avoid:

- Mini Monolithic cards
- Blade/server-specific form factors
- Unknown cards without confirmed T420 compatibility

## Required supporting parts

A RAID card alone is not enough. A future storage build may require:

- Compatible PERC adapter card
- Correct T420 SAS cables
- RAID battery/cache module for H710/H710P
- Correct Dell drive caddies/trays
- Matched drives
- Optional spare drive

## Storage layout idea

```text
Direct motherboard SATA SSD
→ Ubuntu boot drive

Front drive bay RAID virtual disk
→ /mnt/odysseus-storage
→ Docker volumes
→ Ollama models
→ ChromaDB/vector database data
→ mock client documents
→ local backups before off-server copy
```

## RAID level ideas

- 2 drives: RAID 1
- 4 drives: RAID 10
- 6+ drives: RAID 10 or RAID 6

Preferred lab option:

- RAID 10 if enough drives are available
- RAID 1 for a simple two-drive mirror
- Avoid RAID 5 unless the risk is acceptable for lab-only data

## Timing

Do this only after:

1. PSU upgrade is stable.
2. GPU power path is verified.
3. GTX 1060 retest is complete.
4. Ubuntu/Odysseus remain stable.
5. Current backups are copied off-server.
