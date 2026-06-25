# Software Stack

## Operating systems

### Main OS

Ubuntu Server is the main operating system for the AI workspace.

Confirmed working:

- SSH
- Static networking
- Docker
- Docker Compose
- NVIDIA driver
- NVIDIA Container Toolkit
- Ollama
- Open WebUI
- Odysseus
- Tailscale
- Uptime Kuma

### Temporary maintenance OS

Windows Server was used temporarily to run Dell firmware updater packages. It is not required for daily AI workspace operation.

## Core application stack

```text
Ubuntu Server
→ Docker / Docker Compose
→ NVIDIA Container Toolkit
→ Ollama
→ Open WebUI
→ Odysseus
→ Tailscale
→ Uptime Kuma
```

## Ollama

Role:

- Local model runner
- Backend for Open WebUI and Odysseus

Known models used during testing:

- `qwen2.5:1.5b`
- `qwen2.5:3b`
- `llama3.2:1b`

Working host-level check:

```bash
curl http://127.0.0.1:11434/api/tags
```

Network binding used during the working setup:

```ini
[Service]
Environment="OLLAMA_HOST=0.0.0.0:11434"
```

## Open WebUI

Role:

- Simple local AI chat frontend
- Useful fallback if Odysseus is being adjusted
- Connected to local Ollama backend

## Odysseus

Role:

- Main AI workspace under test
- Intended base for MSP workflow testing
- Runs in Docker Compose

Important path:

```text
/opt/odysseus-ai/apps/odysseus
```

Important files:

```text
.env
docker-compose.override.yml
```

Working Docker-to-host Ollama path:

```env
OLLAMA_HOST=host.docker.internal
OLLAMA_BASE_URL=http://host.docker.internal:11434/v1
EMBEDDING_URL=http://host.docker.internal:11434/v1/embeddings
```

Compose requirement:

```yaml
extra_hosts:
  - "host.docker.internal:host-gateway"
```

## Uptime Kuma

Role:

- Service monitoring dashboard
- Tracks SSH, Ollama, Open WebUI, and Odysseus health

Current design:

- Runs with Docker Compose
- Uses host networking
- Uses Embedded MariaDB
- Reached only through Tailscale

See [`UPTIME_KUMA.md`](UPTIME_KUMA.md).

## Utility tools

Installed/recommended tools:

- `btop` for CPU/RAM/process visibility
- `nvtop` for NVIDIA GPU visibility
- `ncdu` for disk usage cleanup
- `trash-cli` for safer file removal
- `duf` for disk usage summary
- `tree` for folder visualization
- `tmux` for persistent terminal sessions
- `rsync` for copying/backups
- `jq` for JSON output parsing
- `ipmitool` for hardware sensor visibility
- `nmap` for network testing
