#!/usr/bin/env bash
set -euo pipefail

MODEL="${1:-moondream}"
PROMPT="Reply with one short sentence: vision test loaded."

echo "== Ollama vision/text sanity check =="
echo "Model: ${MODEL}"

time ollama run "${MODEL}" "${PROMPT}"

echo

echo "== Active Ollama runner =="
ollama ps || true

echo

echo "== GPU snapshot =="
nvidia-smi || true
