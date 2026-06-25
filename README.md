# GoodWill AI Workspace Lab

A self-hosted AI workspace lab built on a Dell PowerEdge T420. The project is focused on testing whether a local AI assistant can support Managed Service Provider (MSP) workflows such as alert interpretation, troubleshooting, documentation lookup, technician notes, and client-facing update drafts.

> **Project status:** Active lab build. The system is currently usable for mock MSP workload testing, but it is not production-ready and should not ingest real client data yet.

---

## Goals

### Current goal

Test local models with mock MSP-style workloads and evaluate how useful the Odysseus AI Workspace can be on the current Dell PowerEdge T420 hardware.

Current testing focuses on:

- Local model behavior
- Mock helpdesk and SaaS alert workflows
- Documentation ingestion
- Technician-facing troubleshooting output
- Client-facing update generation
- System stability and monitoring

### Long-term goal

Build a workplace AI assistant based on Odysseus that can eventually help with:

- SaaS alert interpretation
- Printer, workstation, account, and network issue triage
- Basic hardware/software troubleshooting
- Technician-facing troubleshooting steps
- Client-facing communication drafts
- Internal knowledge lookup against approved documentation

The system should remain a **technician-assist tool**, not an autonomous remediation platform.

---

## Current stack

```text
Ubuntu Server
→ NVIDIA Driver
→ Docker / Docker Compose
→ NVIDIA Container Toolkit
→ Ollama
→ Open WebUI
→ Tailscale remote access
→ Uptime Kuma monitoring
→ Odysseus AI Workspace
→ Local Qwen model testing
```

---

## Hardware overview

| Component | Current status |
|---|---|
| Server | Dell PowerEdge T420 |
| CPU | Dual Intel Xeon E5-2420 |
| Memory | DDR3 ECC, A3 slot/channel avoided due to fault behavior |
| Boot storage | Direct-connected SATA SSD running Ubuntu Server |
| GPU | NVIDIA GT 1030 currently working for light CUDA/model testing |
| Future GPU | GTX 1060 6 GB planned after proper PSU/GPU power hardware |
| PSU | Single known-good PSU currently stable; matched higher-wattage PSUs planned |
| Remote access | Tailscale only |
| Monitoring | Uptime Kuma running through Docker with host networking |

See [`docs/HARDWARE.md`](docs/HARDWARE.md) for more detail.

---

## Software inventory

Core services and tools currently installed or configured:

- Ubuntu Server
- OpenSSH Server
- Docker Engine
- Docker Compose plugin
- NVIDIA driver
- NVIDIA Container Toolkit
- Ollama
- Open WebUI
- Odysseus
- Tailscale
- Uptime Kuma
- Git, curl, wget, nano
- `btop`, `nvtop`, `ncdu`, `trash-cli`, `duf`, `tree`
- `tmux`, `rsync`, `jq`
- `ipmitool`, `nmap`
- UFW firewall
- Optional/limited Dell iDRAC tools / RACADM package

See [`docs/SOFTWARE_STACK.md`](docs/SOFTWARE_STACK.md).

---

## Important security notes

This project is designed to be accessed through Tailscale only.

Do **not** publicly port-forward:

- SSH
- Open WebUI
- Odysseus
- Ollama
- Uptime Kuma
- iDRAC
- Any model/API endpoint

Do **not** commit real secrets, real client data, `.env` files, Tailscale information, passwords, API keys, internal IPs, or backup archives to GitHub.

See [`docs/NETWORKING_AND_SECURITY.md`](docs/NETWORKING_AND_SECURITY.md).

---

## Current known-good model path

Odysseus runs in Docker while Ollama runs as a host-level Ubuntu service. The working Docker-to-host path uses:

```env
OLLAMA_HOST=host.docker.internal
OLLAMA_BASE_URL=http://host.docker.internal:11434/v1
EMBEDDING_URL=http://host.docker.internal:11434/v1/embeddings
```

The Odysseus Compose configuration also needs:

```yaml
extra_hosts:
  - "host.docker.internal:host-gateway"
```

See [`docs/TROUBLESHOOTING_LOG.md`](docs/TROUBLESHOOTING_LOG.md) for the Odysseus `Error 503` fix.

---

## Repository layout

```text
.
├── README.md
├── docs/
│   ├── HARDWARE.md
│   ├── SOFTWARE_STACK.md
│   ├── NETWORKING_AND_SECURITY.md
│   ├── BACKUP_AND_RECOVERY.md
│   ├── RAID_STORAGE_PLAN.md
│   ├── MOCK_MSP_TESTING.md
│   ├── TROUBLESHOOTING_LOG.md
│   ├── UPTIME_KUMA.md
│   ├── ROADMAP.md
│   └── CHANGELOG.md
├── config-examples/
│   ├── odysseus.env.example
│   ├── odysseus.docker-compose.override.example.yml
│   └── uptime-kuma.compose.example.yml
├── scripts/
│   └── check_stack.sh
└── .gitignore
```

---

## Roadmap

### Current phase

- Keep the T420 stable
- Monitor core services with Uptime Kuma
- Build mock MSP documentation
- Test prompts against repeatable helpdesk scenarios
- Record what the model does well and poorly

### Next hardware phase

- Install matched higher-wattage Dell PSUs if confirmed compatible
- Install correct Dell GPU/PCIe power cable
- Retest one GTX 1060 only after power path is corrected
- Confirm `nvidia-smi`, Docker GPU runtime, and Ollama GPU offload

### Future phase

- Add better storage for models, documents, and backups
- Evaluate RAID/front-bay storage expansion
- Improve backup and restore process
- Add stricter access controls
- Consider a Linux staging/admin workstation
- Continue building mock MSP workflows before any real data is used

See [`docs/ROADMAP.md`](docs/ROADMAP.md).

---

## Disclaimer

This is a personal lab and learning project. It is not production-ready, not a replacement for a ticketing system, and not ready for real client data without additional security, permission, policy, audit logging, access control, and backup planning.
