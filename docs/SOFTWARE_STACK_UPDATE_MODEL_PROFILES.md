# Software Stack Update - Model Profiles

## Ollama model profiles

Current local model roles:

```text
qwen2.5:1.5b       Quick/light testing
qwen2.5:3b         Normal text questions and shorter reasoning tasks
qwen2.5:3b-project Long project-summary reasoning and recommendations
qwen2.5vl:3b       Vision-language testing for screenshots/images
```

## Custom project model

The custom model profile is created from `qwen2.5:3b`.

Create command:

```bash
ollama create qwen2.5:3b-project -f Modelfile
```

Recommended verification:

```bash
ollama list
watch -n 0.5 ollama ps
sudo journalctl -u ollama -f
```

Expected runtime evidence:

```text
n_ctx_slot = 16384
truncated = 0
```
