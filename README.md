# GoodWill AI Workspace Lab

A self-hosted AI workspace lab built on a Dell PowerEdge T420. The project is focused on testing whether a local AI assistant can support Managed Service Provider (MSP) workflows such as alert interpretation, troubleshooting, documentation lookup, screenshot review, technician notes, and client-facing update drafts.

> Project status: Active lab build. The system is usable for mock MSP workload testing and early local vision testing, but it is not production-ready and should not ingest real client data yet.

---

## Current testing focus

- Local model behavior
- Custom Ollama model profiles for better long-document reasoning
- GPU-accelerated model testing with a GTX 1060 6GB
- Vision-capable model testing for screenshot/image analysis
- Odysseus vs Open WebUI image-upload behavior
- Long-standing / multi-turn vision conversations
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
→ NVIDIA Container Toolkit / CDI
→ Ollama
→ Open WebUI
→ Tailscale remote access
→ Uptime Kuma monitoring
→ Odysseus AI Workspace
→ GTX 1060 6GB local GPU testing
→ Custom Qwen project model
→ Moondream local vision testing
```

---

## Recent milestone: powered GPU and first vision tests

The lab has moved from slot-powered GPU validation to a working auxiliary-powered GPU configuration. A Dell-style GPU power cable is now installed and a GTX 1060 6GB is functioning under Ubuntu, NVIDIA drivers, and Ollama.

Validated behavior:

- `nvidia-smi` detects the GTX 1060 6GB.
- Ollama can use the GPU for local inference.
- The custom `qwen2.5:3b-project` model responds faster with GPU assistance.
- `moondream` can load fully on GPU according to `ollama ps`.
- Small image prompts work through Odysseus.
- Open WebUI can see Ollama models after allowing Docker bridge access to the host Ollama port.

Known limitations:

- `qwen2.5vl:3b` works but is too slow for practical use on this hardware.
- Multi-image / second-image behavior is still under test.
- Real client data must not be used yet.

See:

- `docs/GPU_POWER_AND_VALIDATION.md`
- `docs/VISION_MODEL_TESTING.md`
- `docs/DOCKER_OLLAMA_CONNECTIVITY.md`

---

## Recommended local model roles

| Model | Current use |
| --- | --- |
| `qwen2.5:1.5b` | Quick/light testing |
| `qwen2.5:3b` | Normal text questions and shorter reasoning tasks |
| `qwen2.5:3b-project` | Long project-summary reasoning and structured recommendations |
| `qwen2.5vl:3b` | Vision comparison only; too slow for routine use on current hardware |
| `moondream` | Current lightweight vision model for small image/screenshot tests |

The `qwen2.5:3b-project` profile uses a larger real Ollama context window than the default model. This was added after runtime checks showed plain `qwen2.5:3b` was running with a 4096-token context and long project summaries were being truncated.

---

## Important security notes

This project is designed to be accessed through private network controls such as Tailscale only. Do not publicly expose SSH, Open WebUI, Odysseus, Ollama, Uptime Kuma, iDRAC, or any model/API endpoint.

Do not commit real secrets, real client data, `.env` files, Tailscale information, passwords, API keys, internal IPs, hostnames, usernames, or backup archives to GitHub.
