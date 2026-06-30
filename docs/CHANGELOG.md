# Changelog

## 2026-06-27

- Reverted the temporary Odysseus `model_context.py` context-window edit.
- Confirmed Odysseus' displayed Qwen window value is not the same as the actual Ollama runtime context.
- Used `watch -n 0.5 ollama ps` to confirm plain `qwen2.5:3b` was running with `CONTEXT 4096`.
- Confirmed long project-summary prompts had previously been truncated at the active 4096-token context.
- Created a custom Ollama model profile: `qwen2.5:3b-project`.
- Added custom model parameters: `num_ctx 16384`, `num_predict 1536`, `temperature 0.3`, `top_p 0.9`, and `repeat_penalty 1.1`.
- Added project-focused system instructions to encourage recommendations instead of summary-only responses.
- Validated the custom model through Ollama logs: `n_ctx_slot = 16384` and `truncated = 0`.
- Added documentation for model tuning, context validation, and runtime logging.
- Added example Modelfile for `qwen2.5:3b-project`.
- Added context-check helper script.

## 2026-06-26

- Added local vision-model testing notes.
- Documented the distinction between text-only local models and vision-language models.
- Added `qwen2.5vl:3b` as the first small local vision-model test target.
- Investigated and fixed Docker port exposure issues for Odysseus and Open WebUI.
