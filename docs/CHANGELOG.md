# Changelog

## 2026-07-03 - GPU power milestone and local vision testing

### Added

- Documented successful auxiliary-powered GPU validation with a GTX 1060 6GB.
- Added notes for Dell-style GPU power cable seating and validation.
- Added Open WebUI / Ollama Docker bridge firewall troubleshooting notes.
- Added first local vision testing notes for `moondream` and `qwen2.5vl:3b`.
- Added current known limitation for multi-image / second-image conversation behavior.
- Added CMOS/RTC/iDRAC SEL time troubleshooting notes.

### Changed

- Updated the recommended model roles to treat `moondream` as the current lightweight vision testing model.
- Updated `qwen2.5vl:3b` status to functional but too slow for routine use on current hardware.
- Updated the project status to reflect that a GTX 1060 6GB is now functional for the lab phase.

### Security

- Reinforced that Ollama, Open WebUI, Odysseus, Uptime Kuma, SSH, and iDRAC should not be publicly exposed.
- Public documentation uses placeholders instead of real IPs, hostnames, usernames, paths containing private details, or credentials.
