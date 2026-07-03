#!/usr/bin/env bash
set -euo pipefail

OPENWEBUI_CONTAINER="${1:-open-webui}"

echo "== Host Ollama API =="
curl -v --connect-timeout 5 http://127.0.0.1:11434/api/tags || true

echo

echo "== Docker bridge gateway path =="
curl -v --connect-timeout 5 http://172.17.0.1:11434/api/tags || true

echo

echo "== Open WebUI container to host Ollama =="
docker exec "${OPENWEBUI_CONTAINER}" curl -v --connect-timeout 5 http://host.docker.internal:11434/api/tags || true

echo

echo "== Listening ports =="
sudo ss -ltnp | grep 11434 || true
