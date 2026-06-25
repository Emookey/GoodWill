# Roadmap

## Phase 1: Stabilize the server

Status: Mostly complete.

Completed:

- Ubuntu Server installed
- Static IP configured
- SSH working
- iDRAC updated and reachable
- BIOS updated
- Bad PSU isolated
- GT 1030 working
- NVIDIA driver working
- Docker GPU runtime validated
- Ollama working
- Open WebUI working
- Odysseus working
- Uptime Kuma monitoring added

## Phase 2: Mock MSP workload testing

Current focus.

Tasks:

- Build mock client documentation
- Test prompt templates
- Test SaaS alert triage workflows
- Test technician-facing troubleshooting output
- Test client-facing update drafts
- Track model strengths and weaknesses
- Compare small models on current hardware

## Phase 3: Hardware upgrade testing

Tasks:

- Install matched higher-wattage PSUs once verified
- Install correct Dell GPU power cable
- Retest one GTX 1060 first
- Confirm stable POST
- Confirm `nvidia-smi`
- Confirm Docker GPU runtime
- Retest Ollama offload and larger models

## Phase 4: Storage expansion

Tasks:

- Decide whether to add front-bay RAID storage
- Choose compatible T420-era PERC adapter
- Add matched drives
- Mount storage for models, Docker volumes, documents, and backups
- Keep boot SSD direct-connected until storage is proven stable

## Phase 5: Security and production-readiness review

Tasks:

- Keep real client data out until approved
- Define access controls
- Define logging requirements
- Build backup/restore plan
- Define allowed data sources
- Keep AI read-only at first
- Keep humans in the remediation loop

## Phase 6: Linux staging/admin workstation

Potential tasks:

- Install Linux Mint or Ubuntu Desktop
- Install Tailscale
- Install VS Code Remote SSH
- Install Obsidian or another Markdown note tool
- Store project docs and mock client data
- Keep off-server backups
- Test Odysseus from a technician-workstation perspective
