#!/usr/bin/env bash
set -euo pipefail

echo "== Host checks =="

echo "Ollama models:"
curl -s http://127.0.0.1:11434/api/tags | head -c 500 || true
echo -e "\n"

echo "HTTP checks:"
for url in \
  "http://127.0.0.1:11434/api/tags" \
  "http://127.0.0.1:3000" \
  "http://127.0.0.1:3001" \
  "http://127.0.0.1:7000"
do
  echo "-- $url"
  curl -I --connect-timeout 5 "$url" 2>/dev/null | head -n 1 || echo "FAILED"
done
echo

echo "Listening ports:"
ss -ltnp | grep -E '(:22|:3000|:3001|:7000|:11434)' || true
echo

echo "== Docker containers =="
docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'
echo

echo "== Docker port bindings =="
for c in open-webui odysseus-odysseus-1 uptime-kuma; do
  if docker inspect "$c" >/dev/null 2>&1; then
    echo "-- $c"
    docker inspect "$c" --format 'PortBindings={{json .HostConfig.PortBindings}}'
  fi
done
echo

echo "== NVIDIA =="
if command -v nvidia-smi >/dev/null 2>&1; then
  nvidia-smi
else
  echo "nvidia-smi not found"
fi
echo

echo "== Disk usage =="
df -h
echo

echo "== Memory =="
free -h
echo

echo "== UFW =="
if command -v ufw >/dev/null 2>&1; then
  sudo ufw status verbose || true
else
  echo "ufw not found"
fi
