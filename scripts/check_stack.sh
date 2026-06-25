#!/usr/bin/env bash
set -euo pipefail

echo "== Host checks =="
echo "Ollama models:"
curl -s http://127.0.0.1:11434/api/tags | head -c 500 || true
echo -e "\n"

echo "Listening ports:"
ss -ltnp | grep -E '(:22|:3000|:3001|:7000|:11434)' || true

echo -e "\n== Docker containers =="
docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'

echo -e "\n== NVIDIA =="
if command -v nvidia-smi >/dev/null 2>&1; then
  nvidia-smi
else
  echo "nvidia-smi not found"
fi

echo -e "\n== Disk usage =="
df -h

echo -e "\n== UFW =="
if command -v ufw >/dev/null 2>&1; then
  sudo ufw status verbose || true
else
  echo "ufw not found"
fi
