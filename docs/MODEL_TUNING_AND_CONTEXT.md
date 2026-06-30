# Model Tuning and Context Notes

## Purpose

This document tracks the local Ollama/Odysseus model-context testing for the GoodWill AI Workspace Lab.

The goal was to improve long project-summary reasoning without editing Odysseus source code.

## Problem observed

Odysseus displayed a very large context window for Qwen-family models:

```text
Window: 131,072 tokens
```

Runtime testing showed the actual Ollama context was different.

## Runtime evidence

Run this while a model is actively generating:

```bash
watch -n 0.5 ollama ps
```

Plain `qwen2.5:3b` was observed with:

```text
CONTEXT 4096
```

Ollama logs showed long pasted project summaries were being truncated:

```text
prompt eval ... / 4095 tokens
truncated = 1
```

This explained why the small local model tended to summarize visible chunks instead of making complete recommendations.

## Source-code edit reverted

A temporary edit was made to Odysseus' `model_context.py` file while investigating the displayed Qwen context value. After runtime testing, that change was reverted.

Current conclusion:

```text
Do not edit Odysseus source code for this issue. Use custom Ollama model profiles instead.
```

## Custom model profile

A custom model was created from `qwen2.5:3b`:

```text
qwen2.5:3b-project
```

Purpose:

- Increase the real Ollama context window to 16k.
- Give the model enough room for long project summaries.
- Add project-focused system instructions.
- Encourage ranked recommendations instead of summary-only answers.

## Modelfile

See [`../config-examples/qwen2.5-3b-project.Modelfile`](../config-examples/qwen2.5-3b-project.Modelfile).

Create it with:

```bash
ollama create qwen2.5:3b-project -f Modelfile
```

## Validation

After using the custom model, Ollama logs showed:

```text
n_ctx_slot = 16384
truncated = 0
```

This confirmed the larger context was active and the tested project summary was no longer clipped.

## Useful commands

```bash
watch -n 0.5 ollama ps
sudo journalctl -u ollama -n 100 --no-pager
sudo journalctl -u ollama -f
```

Look for:

```text
n_ctx_slot
prompt eval count
truncated = 0
truncated = 1
```

## Current model roles

| Model | Role |
|---|---|
| `qwen2.5:1.5b` | Quick/light testing |
| `qwen2.5:3b` | Normal text questions and shorter reasoning tasks |
| `qwen2.5:3b-project` | Long project-summary reasoning and structured recommendations |
| `qwen2.5vl:3b` | Screenshot/image testing only |
