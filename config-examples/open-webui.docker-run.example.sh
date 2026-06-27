#!/usr/bin/env bash
set -euo pipefail

# Open WebUI durable standalone container example.
#
# This example preserves the named Docker volume:
#   open-webui -> /app/backend/data
#
# It publishes Open WebUI on host port 3000 and container port 8080.
# Restrict real access with Tailscale/firewall policy. Do not publicly expose this service.

docker run -d \
  --name open-webui \
  --restart always \
  -p 3000:8080 \
  -v open-webui:/app/backend/data \
  --add-host=host.docker.internal:host-gateway \
  ghcr.io/open-webui/open-webui:main
