# Changelog

## 2026-06-24

- Added Odysseus `Error 503` fix.
- Confirmed Ollama was healthy on the host.
- Identified Docker-to-host communication issue between Odysseus and Ollama.
- Activated `.env` settings for `host.docker.internal` Ollama path.
- Added Compose host-gateway mapping.
- Confirmed Odysseus prompts worked again.

## 2026-06-23

- Added Uptime Kuma clean Docker Compose install.
- Selected Embedded MariaDB during first-run setup.
- Switched Uptime Kuma to host networking so it could monitor SSH and Ollama correctly.
- Added cleanup tools including `ncdu` and `trash-cli`.
- Added monitoring and cleanup notes to the project summary.

## Earlier milestones

- Ubuntu Server installed.
- BIOS and iDRAC firmware updated.
- Static networking configured.
- SSH configured.
- Docker and NVIDIA Container Toolkit installed.
- Ollama installed and tested.
- Open WebUI installed and connected to Ollama.
- Odysseus installed and connected to local Qwen model.
- Tailscale remote access configured.
- GT 1030 validated for NVIDIA driver and CUDA visibility.
