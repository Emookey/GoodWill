# Changelog

## 2026-06-26

- Added local vision-model testing notes.
- Documented the distinction between text-only local models and vision-language models.
- Added `qwen2.5vl:3b` as the first small local vision-model test target.
- Documented the typo that caused the failed pull attempt:
  - Incorrect: `qwen2.5v1:3b`
  - Correct: `qwen2.5vl:3b`
- Investigated an outage where Odysseus and Open WebUI were running but unreachable through the expected remote-access path.
- Confirmed the outage was not caused by disk exhaustion or RAM exhaustion.
- Fixed Odysseus port exposure by using the existing Compose environment-driven bind setting instead of adding a duplicate `ports:` mapping.
- Added recommended Odysseus `.env` values:
  - `APP_BIND=0.0.0.0`
  - `APP_PORT=7000`
- Recreated the Odysseus service and confirmed the service published on all host interfaces.
- Recreated the standalone Open WebUI container with durable host port publishing:
  - `-p 3000:8080`
- Preserved the existing Open WebUI named volume during recreation.
- Added Docker port-binding notes and a sanitized Open WebUI run example.
- Updated stack checks to include local HTTP checks for Open WebUI and Odysseus.

## 2026-06-25

- 1100W PSU compatibility test documented.
- Tested newly received Dell 1100W EPP PSUs before GPU cable installation.
- Confirmed known-good 750W PSU still boots the server normally.
- Identified both tested 1100W PSUs as incompatible with this T420/iDRAC/PDB combination.
- Captured `ipmitool` SEL evidence showing `Power Supply Status | Config Error: Vendor Mismatch | Asserted`.
- Added PSU model exclusions:
  - `L1100E-S1 / DP/N 0CMPGM`
  - `D1100E-S0 / DP/N 0Y26KX`
- GPU power retest remains on hold until a compatible matched 1100W PSU pair is obtained.

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
