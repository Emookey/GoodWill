# GoodWill AI Workspace Lab

A self-hosted AI workspace lab built on a Dell PowerEdge T420. The project is focused on testing whether a local AI assistant can support Managed Service Provider (MSP) workflows such as alert interpretation, troubleshooting, documentation lookup, technician notes, and client-facing update drafts.

> **Project status:** Active lab build. The system is currently usable for mock MSP workload testing, but it is not production-ready and should not ingest real client data yet.

---

## Current testing focus

- Local model behavior
- Custom Ollama model profiles for better long-document reasoning
- Vision-capable model testing for screenshot/image analysis
- Mock helpdesk and SaaS alert workflows
- Documentation ingestion
- Technician-facing troubleshooting output
- Client-facing update generation
- System stability and monitoring

---

## Current stack

```text
Ubuntu Server
→ NVIDIA Driver
→ Docker / Docker Compose
→ NVIDIA Container Toolkit
→ Ollama
→ Open WebUI
→ Tailscale remote access
→ Uptime Kuma monitoring
→ Odysseus AI Workspace
→ Local Qwen model testing
→ Custom Ollama model profile testing
```

---

## Recommended local model roles

| Model | Current use |
|---|---|
| `qwen2.5:1.5b` | Quick/light testing |
| `qwen2.5:3b` | Normal text questions and shorter reasoning tasks |
| `qwen2.5:3b-project` | Long project-summary reasoning and structured recommendations |
| `qwen2.5vl:3b` | Screenshot/image testing and vision-language validation |

The `qwen2.5:3b-project` profile uses a larger real Ollama context window than the default model. This was added after runtime checks showed plain `qwen2.5:3b` was running with a 4096-token context and long project summaries were being truncated.

See [`docs/MODEL_TUNING_AND_CONTEXT.md`](docs/MODEL_TUNING_AND_CONTEXT.md).

---

## Recent update: custom Ollama context profile

Odysseus displayed a large model window for Qwen-family models, but runtime checks showed Ollama was actually loading plain `qwen2.5:3b` with a 4096-token context.

The project now uses a custom Ollama model profile:

```text
qwen2.5:3b-project
```

Runtime validation showed:

```text
n_ctx_slot = 16384
truncated = 0
```

This means the custom profile was using a 16k context window and the tested project summary was no longer being clipped.

See:

- [`docs/MODEL_TUNING_AND_CONTEXT.md`](docs/MODEL_TUNING_AND_CONTEXT.md)
- [`config-examples/qwen2.5-3b-project.Modelfile`](config-examples/qwen2.5-3b-project.Modelfile)
- [`scripts/check_ollama_context.sh`](scripts/check_ollama_context.sh)

---

## Important security notes

This project is designed to be accessed through Tailscale only. Do not publicly expose SSH, Open WebUI, Odysseus, Ollama, Uptime Kuma, iDRAC, or any model/API endpoint.

Do not commit real secrets, real client data, `.env` files, Tailscale information, passwords, API keys, internal IPs, or backup archives to GitHub.
