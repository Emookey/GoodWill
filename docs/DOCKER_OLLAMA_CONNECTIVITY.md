# Docker / Ollama Connectivity Notes

## Problem

Open WebUI may show no Ollama models even while Ollama works on the host.

Common signs:

```bash
ollama list
ollama run <model>
```

work on the host, but Open WebUI shows an empty model list.

Inside the Open WebUI container, this may time out:

```bash
docker exec open-webui curl -v --connect-timeout 5 http://host.docker.internal:11434/api/tags
```

## Cause

Open WebUI runs in a Docker container while Ollama runs as a host-level service. The container reaches the host through Docker bridge networking. If the firewall blocks Docker bridge traffic to Ollama's port, Open WebUI cannot list models.

## Required Ollama host binding

Ollama should listen beyond only localhost if containers need to reach it through the host gateway.

Example systemd override:

```ini
[Service]
Environment="OLLAMA_HOST=0.0.0.0:11434"
```

Apply/reload:

```bash
sudo systemctl daemon-reload
sudo systemctl restart ollama
sudo ss -ltnp | grep 11434
```

## Required container host mapping

Open WebUI should include:

```bash
--add-host=host.docker.internal:host-gateway
```

and use this Ollama URL:

```text
http://host.docker.internal:11434
```

## Firewall check

Check host Ollama:

```bash
curl -v --connect-timeout 5 http://127.0.0.1:11434/api/tags
```

Check Docker bridge path:

```bash
curl -v --connect-timeout 5 http://172.17.0.1:11434/api/tags
```

Check from Open WebUI container:

```bash
docker exec open-webui curl -v --connect-timeout 5 http://host.docker.internal:11434/api/tags
```

If the container path times out, review UFW/firewall rules and allow Docker bridge access to the host Ollama port. Use the most restrictive rule that works for the lab network.

## Security warning

Do not expose Ollama publicly. Keep access limited to private network controls such as Tailscale, firewall rules, and local bridge networking.
