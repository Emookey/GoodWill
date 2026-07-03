#!/usr/bin/env bash
# Example Open WebUI container run command.
# This preserves the named Docker volume and maps host.docker.internal to the Docker host gateway.
# Review firewall rules before using this in your environment.

docker run -d \
  --name open-webui \
  --restart always \
  -p 3000:8080 \
  -v open-webui:/app/backend/data \
  --add-host=host.docker.internal:host-gateway \
  -e OLLAMA_BASE_URL=http://host.docker.internal:11434 \
  ghcr.io/open-webui/open-webui:main
