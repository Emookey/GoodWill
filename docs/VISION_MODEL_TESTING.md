# Vision Model Testing

## Current status

Local image analysis is now working at a basic level.

Current practical vision model:

```text
moondream
```

Current comparison model:

```text
qwen2.5vl:3b
```

## Model observations

### moondream

Current role:

- Lightweight local vision testing
- Small/simple screenshots
- Single-image prompt validation
- Proving that the frontend can pass image data to Ollama

Observed behavior:

- Text-only test runs quickly.
- `ollama ps` can show `PROCESSOR 100% GPU`.
- Small image prompts can work through Odysseus.
- Second-image or long-running multi-turn image conversations still need validation.

### qwen2.5vl:3b

Current role:

- Comparison vision-language model only.

Observed behavior:

- Functional, but too slow for practical use on the current hardware.
- Can spend most work on CPU depending on offload behavior.
- Not recommended as the main active vision model for this lab phase.

## About `nvidia-smi` showing 0% GPU utilization

For small models and short responses, `nvidia-smi` may show low or 0% instantaneous utilization even when the model is loaded on the GPU. GPU work can happen in short bursts between `nvidia-smi` polling intervals.

Better indicators:

- `ollama ps` processor split
- VRAM usage
- model process shown in `nvidia-smi`
- response speed
- `nvidia-smi dmon`
- `nvidia-smi pmon`
- `nvtop`

Useful monitoring commands:

```bash
watch -n 0.5 ollama ps
watch -n 0.5 nvidia-smi
nvidia-smi dmon -s pucm
nvidia-smi pmon -c 20
nvtop
```

## Recommended test flow

### Test A: single image in a fresh chat

1. Start a new chat.
2. Select `moondream`.
3. Upload a small/simple image.
4. Prompt:

```text
Describe this image in one sentence.
```

### Test B: second image in the same chat

1. Upload image 1.
2. Ask for a short description.
3. Wait for the model to respond.
4. Upload image 2 in the same conversation.
5. Prompt:

```text
Ignore the previous image. Describe only this new image.
```

### Test C: compare frontends

Repeat Test A and Test B in both:

- Odysseus
- Open WebUI

Interpretation:

- If Open WebUI works but Odysseus fails, the issue is likely frontend-specific.
- If both fail on second-image prompts, the issue may be model/Ollama/multi-image behavior.
- If fresh chats work but same-chat second images fail, document a multi-turn image limitation.

## Recommended MSP screenshot prompt

```text
You are helping an MSP technician. Review this screenshot and list:
1. What application or screen appears to be shown.
2. Any visible error messages or warnings.
3. Likely cause.
4. First troubleshooting steps.
5. A short client-facing update.
```

## Current limitation

Vision testing is not production-ready. Use mock screenshots only. Do not upload real client data, PHI, credentials, private tickets, or sensitive internal documentation.
