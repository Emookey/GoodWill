#!/usr/bin/env bash
set -euo pipefail

echo "== NVIDIA GPU =="
if command -v nvidia-smi >/dev/null 2>&1; then
  nvidia-smi
else
  echo "nvidia-smi not found"
fi

echo

echo "== Recent NVIDIA / PCIe messages =="
if command -v dmesg >/dev/null 2>&1; then
  dmesg -T | grep -Ei "nvidia|xid|pcie|aer|power|fail" | tail -80 || true
fi

echo

echo "== Ollama models =="
if command -v ollama >/dev/null 2>&1; then
  ollama list || true
  ollama ps || true
else
  echo "ollama not found"
fi

echo

echo "== Hardware sensors via ipmitool =="
if command -v ipmitool >/dev/null 2>&1; then
  sudo ipmitool sdr elist | egrep -i "battery|ps|pwr|power|volt|curr|supply|fan|temp" || true
else
  echo "ipmitool not found"
fi
