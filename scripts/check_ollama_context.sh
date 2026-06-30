#!/usr/bin/env bash
set -euo pipefail

echo "== Ollama loaded models/context =="
ollama ps || true
echo

echo "== Recent Ollama log context markers =="
sudo journalctl -u ollama -n 200 --no-pager | grep -Ei 'n_ctx_slot|prompt eval|truncated|eval time|/v1/chat/completions' || true
echo

echo "== Installed Ollama models =="
ollama list || true
echo

cat <<'EOF'
Tips:
- Run this while or immediately after testing a prompt in Odysseus.
- For the project model, expect to see n_ctx_slot = 16384 in logs.
- truncated = 0 means the prompt fit inside the active context.
- truncated = 1 means input was clipped.
- Use "watch -n 0.5 ollama ps" in another terminal while generating for live context details.
EOF
