# GoodWill Repository Update Package - 2026-06-27

This ZIP is intended to be extracted into the root of the `Emookey/GoodWill` repository.

It updates the public repository documentation for:

- Custom Ollama model profile creation
- Real runtime context verification with `ollama ps`
- Ollama log interpretation
- Reverting the Odysseus source-code context edit
- Using `qwen2.5:3b-project` for long project-summary reasoning
- Keeping `qwen2.5vl:3b` focused on vision/screenshot testing

## Suggested apply flow

From your local repository root:

```bash
git checkout -b update-custom-ollama-context
# Extract this ZIP into the repo root, allowing overwrites.
git status
git diff
git add README.md docs config-examples scripts/check_ollama_context.sh APPLY_UPDATE.md
git commit -m "Document custom Ollama context profile"
git push
```

## Public-safety note

This package intentionally does not include real Tailscale IPs, LAN IPs, passwords, `.env` files, API keys, usernames, or client data.
