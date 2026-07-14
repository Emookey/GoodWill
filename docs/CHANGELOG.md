# Changelog

## 2026-07-14 - Functional Odysseus Library RAG and multi-client indexes

### Added

- Added atomic model-facing RAG indexes for ACME Dental and Pine Ridge Township.
- Added authority, namespace, permission, SOP, resource, printer, and user/device records.
- Added optional Pine Ridge historical-precedent indexes.
- Added multi-client authority rules and validation prompts.
- Added read-only RAG auditing, Library backfill, and index-validation scripts.
- Added documentation for the SQLite-to-ChromaDB synchronization repair and local retrieval tuning.

### Changed

- Tuned normal Library retrieval from five to ten candidates.
- Lowered the local similarity cutoff from `0.35` to `0.30`.
- Added owner-scoped literal identifier retrieval and authoritative-source prioritization.
- Replaced wide-table model inputs with atomic records designed to remain within the 500-character chunk target.
- Updated the mock-data testing conclusion from experimental retrieval to functional mock-data RAG.

### Validated

- ACME Dental exact device, printer, application, and SOP lookups.
- Pine Ridge Borough and Police exact device and permission lookups.
- Cross-client comparisons using `ACME-*`, `PRT-BOR-*`, and `PRT-PD-*` namespaces.
- Correct use of self-contained device records by the local Qwen model.

### Safety

- Real client data remains prohibited.
- Mock ticket answer keys must remain outside persistent Library RAG during blind testing.
- The local Odysseus patch is version-specific and must be backed up before future upgrades.


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
