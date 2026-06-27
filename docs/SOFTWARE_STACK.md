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

---

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

---

## Ollama

Role:

- Local model runner
- Backend for Open WebUI and Odysseus
- First test target for local vision-language models

Known models used during testing:

- `qwen2.5:1.5b`
- `qwen2.5:3b`
- `llama3.2:1b`
- `qwen2.5vl:3b`

Working host-level check:

```bash
curl http://127.0.0.1:11434/api/tags
```

Network binding used during the working setup:

```ini
[Service]
Environment="OLLAMA_HOST=0.0.0.0:11434"
```

---

## Vision model testing

The original Qwen models were text-only models. They cannot analyze screenshots/images by themselves.

Vision/image analysis requires:

1. A vision-language model.
2. A frontend that passes image data to the model.
3. An Ollama request path that supports image input.

First small local vision-language model target:

```bash
ollama pull qwen2.5vl:3b
```

Typo to avoid:

```text
qwen2.5v1:3b  # wrong
qwen2.5vl:3b  # correct
```

See [`VISION_MODEL_TESTING.md`](VISION_MODEL_TESTING.md).

---

## Open WebUI

Role:

- Simple local AI chat frontend
- Useful fallback if Odysseus is being adjusted
- Useful first frontend for testing image upload against vision-capable models
- Connected to local Ollama backend

Durable standalone run pattern:

```bash
docker run -d \
  --name open-webui \
  --restart always \
  -p 3000:8080 \
  -v open-webui:/app/backend/data \
  --add-host=host.docker.internal:host-gateway \
  ghcr.io/open-webui/open-webui:main
```

The named Docker volume preserves Open WebUI settings, users, and chats:

```text
open-webui -> /app/backend/data
```

---

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

Durable app bind values for the private `.env` file:

```env
APP_BIND=0.0.0.0
APP_PORT=7000
```

Do not commit the real `.env` file.

---

## Uptime Kuma

Role:

- Service monitoring dashboard
- Tracks SSH, Ollama, Open WebUI, and Odysseus health

Current design:

- Runs with Docker Compose
- Uses host networking
- Uses Embedded MariaDB
- Reached only through private remote access

See [`UPTIME_KUMA.md`](UPTIME_KUMA.md).

---

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
