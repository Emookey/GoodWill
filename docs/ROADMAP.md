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
- NVIDIA driver working
- Docker GPU runtime validated
- Ollama working
- Open WebUI working
- Odysseus working
- Uptime Kuma monitoring added
- Docker port exposure issue documented and corrected

## Phase 2: Mock MSP workload and model testing

Status: Current focus.

Tasks:

- Build mock client documentation
- Test prompt templates
- Test SaaS alert triage workflows
- Test technician-facing troubleshooting output
- Test client-facing update drafts
- Track model strengths and weaknesses
- Compare small models on current hardware
- Test local vision-language model support for screenshots/images
- Determine whether Odysseus can pass image uploads to a vision-capable local model
- Use Open WebUI as the fallback vision frontend if Odysseus image handling is not ready

## Phase 3: Hardware upgrade testing

Tasks:

- Install matched higher-wattage PSUs once verified
- Install correct Dell GPU power cable
- Retest one GTX 1060 first
- Confirm stable POST
- Confirm `nvidia-smi`
- Confirm Docker GPU runtime
- Retest Ollama offload and larger models
- Retest vision-model performance with better GPU acceleration

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
- Review whether local model endpoints require additional authentication or proxying

## Phase 6: Linux staging/admin workstation

Potential tasks:

- Install Linux Mint or Ubuntu Desktop
- Install Tailscale
- Install VS Code Remote SSH
- Install Obsidian or another Markdown note tool
- Store project docs and mock client data
- Keep off-server backups
- Test Odysseus from a technician-workstation perspective
