# Software Stack

## Core stack

```text
Ubuntu Server
OpenSSH
Docker Engine
Docker Compose
NVIDIA Driver
NVIDIA Container Toolkit / CDI
Ollama
Open WebUI
Odysseus
Tailscale
Uptime Kuma
UFW
ipmitool
```

## Current model stack

```text
qwen2.5:1.5b          quick/light tests
qwen2.5:3b            standard local text tests
qwen2.5:3b-project    long project-summary reasoning
qwen2.5vl:3b          slower vision comparison model
moondream             current lightweight vision test model
```

## Important service checks

```bash
systemctl status ollama --no-pager
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
ollama list
ollama ps
nvidia-smi
```

## Important access model

Keep services private. Use private network access and firewall controls. Do not expose Ollama, Open WebUI, Odysseus, Uptime Kuma, SSH, or iDRAC to the public internet.
