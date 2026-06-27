# Troubleshooting Log

## Odysseus and Open WebUI unreachable after vision-model setup

### Symptom

Odysseus and Open WebUI showed as down in monitoring and were unreachable from the browser.

The containers were running, but the web services were not reachable through the expected remote-access path.

### Initial suspicion

The issue appeared shortly after starting local vision-model testing, so the first concern was that the newly downloaded model may have caused disk, RAM, or service instability.

### Resource checks

Disk and memory checks showed that the server was not under resource exhaustion.

Helpful checks:

```bash
df -h
free -h
docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
```

### Diagnosis

Open WebUI was confirmed to be alive inside its container:

```bash
docker exec open-webui curl -I http://127.0.0.1:8080
```

A successful response from inside the container meant the application was running. The issue was the host-side Docker port exposure.

Odysseus was also running, but the Compose port configuration needed correction.

### Root cause

The root cause was Docker host port binding behavior.

For Odysseus, the base Compose file used an environment-driven binding similar to:

```yaml
- "${APP_BIND:-127.0.0.1}:${APP_PORT:-7000}:7000"
```

Adding a second broad mapping in an override file caused Compose to merge the rules instead of replacing the original rule. This created a duplicate port conflict.

Bad merged pattern:

```text
127.0.0.1:7000 -> 7000
0.0.0.0:7000   -> 7000
```

Docker then failed with a bind error.

### Odysseus fix

Do not add a duplicate `ports:` rule to the override file.

Instead, set the bind variables in the private local `.env` file:

```env
APP_BIND=0.0.0.0
APP_PORT=7000
```

Then recreate the service:

```bash
cd /opt/odysseus-ai/apps/odysseus
docker compose up -d --force-recreate odysseus
```

Expected result:

```text
0.0.0.0:7000->7000/tcp
[::]:7000->7000/tcp
```

Validate locally:

```bash
curl -I http://127.0.0.1:7000
```

A redirect to `/login` is a good result.

### Open WebUI fix

Open WebUI was a standalone Docker container, so the port mapping could not be changed in place.

The old container was stopped and renamed for rollback safety:

```bash
docker stop open-webui
docker rename open-webui open-webui-old-YYYY-MM-DD-HHMM
```

The replacement container was created using the existing named data volume:

```bash
docker run -d \
  --name open-webui \
  --restart always \
  -p 3000:8080 \
  -v open-webui:/app/backend/data \
  --add-host=host.docker.internal:host-gateway \
  ghcr.io/open-webui/open-webui:main
```

Expected result:

```text
0.0.0.0:3000->8080/tcp
[::]:3000->8080/tcp
```

### Lesson

A container can be running and healthy internally while still being unreachable externally. When a browser path fails, check both the app status and the host-side Docker port bindings.

---

## Odysseus `Error 503` when prompting

### Symptom

Odysseus was reachable in the browser, but prompts returned:

```text
Error 503
```

### Diagnosis

Ollama worked on the Ubuntu host, but Odysseus could not communicate with Ollama from inside Docker.

Confirmed host-level Ollama was healthy:

```bash
curl http://127.0.0.1:11434/api/tags
```

The failure was isolated to the Docker-to-host path.

### Root cause

The required Ollama settings existed in `.env`, but they were commented out. Because lines beginning with `#` are comments, Odysseus was not actually using the corrected settings.

### Fix

Add active, uncommented lines to Odysseus `.env`:

```env
OLLAMA_HOST=host.docker.internal
OLLAMA_BASE_URL=http://host.docker.internal:11434/v1
EMBEDDING_URL=http://host.docker.internal:11434/v1/embeddings
```

Add host gateway mapping to the Odysseus Compose configuration:

```yaml
services:
  odysseus:
    extra_hosts:
      - "host.docker.internal:host-gateway"
```

Restart Odysseus:

```bash
cd /opt/odysseus-ai/apps/odysseus
docker compose down
docker compose up -d
```

### Verification

From inside the Odysseus container:

```bash
docker exec -it odysseus-odysseus-1 sh
wget -qO- http://host.docker.internal:11434/api/tags
wget -qO- http://host.docker.internal:11434/v1/models
```

Then test a prompt in Odysseus.

### Future note

If Odysseus returns `503` again, check Ollama connectivity first.

---

## Uptime Kuma could not monitor SSH/Ollama

### Symptom

Uptime Kuma could reach browser-based services but showed SSH and Ollama as down.

### Cause

Uptime Kuma was running inside Docker bridge networking. Checks against the host's own services were not behaving the same way as checks from an external remote-access client.

### Fix

Run Uptime Kuma with host networking:

```yaml
services:
  uptime-kuma:
    image: louislam/uptime-kuma:2
    container_name: uptime-kuma
    restart: unless-stopped
    network_mode: host
    volumes:
      - ./data:/app/data
```

Then use local monitor targets:

```text
SSH: 127.0.0.1 port 22
Ollama: http://127.0.0.1:11434/api/tags
Open WebUI: http://127.0.0.1:3000
Odysseus: http://127.0.0.1:7000
```

---

## 1100W PSU upgrade attempt: vendor mismatch shutdown

### Symptom

The system failed to get past `Initializing iDRAC...` when tested with newly received Dell 1100W EPP PSUs.

### Tested hardware

- `L1100E-S1 / DP/N 0CMPGM / Lite-On`
- `D1100E-S0 / DP/N 0Y26KX / Delta`

### Isolation steps

- GTX 1060 auxiliary PCIe power was not connected.
- Dell GPU/PCIe power cable was not installed.
- RAID card was not installed.
- Each PSU was tested individually.
- Each PSU was tested in both bays.
- Known-good 750W PSU was reinstalled as a control test.

### Result

Both 1100W units failed the same way in both bays:

1. Solid green PSU LED during memory configuration.
2. Reached `Initializing iDRAC...`.
3. PSU LED flashed green.
4. System shut down.

The known-good 750W PSU continued to boot normally.

### Log evidence

```text
Power Supply Status | Config Error: Vendor Mismatch | Asserted
```

### Conclusion

The issue is not caused by iDRAC corruption, the GPU, the RAID card, or the PCIe GPU cable. The tested 1100W PSUs are not accepted by this T420/iDRAC/PDB combination.

### Fix / next step

Return or exchange the failed 1100W PSUs.

Acquire a matched 1100W pair explicitly sold as PowerEdge T420/T620-compatible before continuing GPU-power testing.
