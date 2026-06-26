# Troubleshooting Log

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
curl http://<LAN_IP>:11434/api/tags
```

Both returned model data.

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

Uptime Kuma was running inside Docker bridge networking. Checks against the host's own services were not behaving the same way as checks from an external Tailscale client.

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
SSH:      127.0.0.1 port 22
Ollama:   http://127.0.0.1:11434/api/tags
OpenWebUI http://127.0.0.1:3000
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

Return or exchange the failed 1100W PSUs. Acquire a matched 1100W pair explicitly sold as PowerEdge T420/T620-compatible before continuing GPU-power testing.
