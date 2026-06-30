# Troubleshooting Log Update - Ollama Context

## Symptom

The model answered long project-summary questions by mostly summarizing the document instead of giving hardware/software recommendations.

Odysseus displayed:

```text
Window: 131,072 tokens
```

## Findings

`watch -n 0.5 ollama ps` showed the real active context for plain `qwen2.5:3b` was:

```text
CONTEXT 4096
```

Ollama logs showed previous long prompts were being truncated:

```text
truncated = 1
```

The issue was that the real context was too small for the pasted project summary.

## Fix

Create a custom Ollama model profile:

```text
qwen2.5:3b-project
```

with:

```text
num_ctx 16384
num_predict 1536
temperature 0.3
```

## Validation

Ollama logs confirmed:

```text
n_ctx_slot = 16384
truncated = 0
```
