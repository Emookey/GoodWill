# Uptime Kuma Monitoring

## Purpose

Uptime Kuma provides a simple monitoring dashboard for the local AI workspace stack.

Current monitored services:

- SSH
- Ollama
- Open WebUI
- Odysseus

## Install location

```text
/opt/odysseus-ai/apps/uptime-kuma
```

## Current design

- Docker Compose deployment
- Embedded MariaDB selected during first setup
- Host networking enabled
- Access limited to Tailscale/admin network

## Compose example

See [`../config-examples/uptime-kuma.compose.example.yml`](../config-examples/uptime-kuma.compose.example.yml).

## Recommended monitors

```text
SSH
Type: Port / TCP Port
Hostname: 127.0.0.1
Port: 22

Ollama
Type: HTTP(s)
URL: http://127.0.0.1:11434/api/tags

Open WebUI
Type: HTTP(s)
URL: http://127.0.0.1:3000

Odysseus
Type: HTTP(s)
URL: http://127.0.0.1:7000
```

## Why host networking is used

Uptime Kuma runs on the same server it monitors. Host networking lets it check local host services through `127.0.0.1` instead of fighting Docker bridge networking.

## Backup notes

Back up:

```text
/opt/odysseus-ai/apps/uptime-kuma/compose.yml
/opt/odysseus-ai/apps/uptime-kuma/data/
```
