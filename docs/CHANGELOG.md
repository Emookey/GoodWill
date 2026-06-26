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


## 2026-06-25 - 1100W PSU compatibility test documented

- Tested newly received Dell 1100W EPP PSUs before GPU cable installation.
- Confirmed known-good 750W PSU still boots the server normally.
- Identified both tested 1100W PSUs as incompatible with this T420/iDRAC/PDB combination.
- Captured `ipmitool` SEL evidence showing `Power Supply Status | Config Error: Vendor Mismatch | Asserted`.
- Added PSU model exclusions:
  - `L1100E-S1 / DP/N 0CMPGM`
  - `D1100E-S0 / DP/N 0Y26KX`
- GPU power retest remains on hold until a compatible matched 1100W PSU pair is obtained.
