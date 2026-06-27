# Docker Port Binding Notes

## Purpose

This document records the Docker port exposure issue discovered during the GoodWill AI Workspace Lab setup.

Odysseus and Open WebUI were running, but they were not reachable through the expected remote-access path. The problem was not application failure; it was host-side Docker port exposure.

---

## Key lesson

A container can be healthy internally but unreachable externally.

Always check:

```bash
docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
docker inspect <container-name> --format 'PortBindings={{json .HostConfig.PortBindings}}'
sudo ss -ltnp | grep -E '(:3000|:7000|:11434)'
```

---

## Durable binding pattern

For this lab, the durable pattern is to publish web services on all host interfaces:

```text
Open WebUI: 3000:8080
Odysseus:   7000:7000
```

This normally appears in `docker ps` as:

```text
0.0.0.0:3000->8080/tcp
[::]:3000->8080/tcp

0.0.0.0:7000->7000/tcp
[::]:7000->7000/tcp
```

Remote access should still be restricted through Tailscale and firewall rules.

---

## Odysseus Compose note

Odysseus was managed by Docker Compose.

The base Compose file used an environment-driven binding like:

```yaml
- "${APP_BIND:-127.0.0.1}:${APP_PORT:-7000}:7000"
```

Do not add a second broad port mapping in an override file. Compose will merge both entries instead of replacing the old one.

Instead, set the variables in the private `.env` file:

```env
APP_BIND=0.0.0.0
APP_PORT=7000
```

Then recreate Odysseus:

```bash
cd /opt/odysseus-ai/apps/odysseus
docker compose up -d --force-recreate odysseus
```

Validate:

```bash
curl -I http://127.0.0.1:7000
```

A redirect to `/login` is expected.

---

## Open WebUI standalone container note

Docker cannot change port mappings on an existing standalone container. To change the host port binding, recreate the container.

Before replacing it, confirm the data volume:

```bash
docker inspect open-webui --format '{{range .Mounts}}{{println .Type .Name .Source "->" .Destination}}{{end}}'
```

Expected volume pattern:

```text
open-webui -> /app/backend/data
```

Safe replacement pattern:

```bash
docker stop open-webui
docker rename open-webui open-webui-old-YYYY-MM-DD-HHMM

docker run -d \
  --name open-webui \
  --restart always \
  -p 3000:8080 \
  -v open-webui:/app/backend/data \
  --add-host=host.docker.internal:host-gateway \
  ghcr.io/open-webui/open-webui:main
```

Validate:

```bash
curl -I http://127.0.0.1:3000
```

---

## Monitoring note

Uptime Kuma helped identify both the outage and the recovery.

Recommended monitor types/targets for a host-networked Uptime Kuma deployment:

```text
SSH:        127.0.0.1 port 22
Ollama:     http://127.0.0.1:11434/api/tags
Open WebUI: http://127.0.0.1:3000
Odysseus:   http://127.0.0.1:7000
```
