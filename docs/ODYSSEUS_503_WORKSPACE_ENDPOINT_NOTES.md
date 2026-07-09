# Odysseus Error 503 - Workspace Endpoint Notes

Updated: 2026-07-09

## Symptom

Odysseus showed available Ollama models, but chat prompts returned:

```text
Error 503
```

This happened even for a basic prompt with no file attachments.

## Initial Suspicion

Possible causes considered:

- Ollama service down
- Docker-to-host networking issue
- UFW blocking Docker bridge traffic
- wrong `.env` values
- stale container environment
- model load or GPU issue
- file upload/embedding failure
- Linux permissions issue

## Confirmed Working During Troubleshooting

From inside the Odysseus container:

```bash
curl http://host.docker.internal:11434/api/tags
curl http://host.docker.internal:11434/v1/models
curl http://host.docker.internal:11434/v1/chat/completions
```

The direct `/v1/chat/completions` test succeeded and returned a valid response from the local model.

That confirmed:

```text
Odysseus container
→ host.docker.internal
→ Ollama :11434
→ /v1/chat/completions
→ qwen2.5:3b-project
→ successful response
```

## Root Cause

The issue was in the Odysseus UI/workspace configuration.

The active chat/workspace page was still pointed at the wrong model endpoint. Odysseus could detect/list models, but actual chat requests were routed through the wrong endpoint and returned 503.

## Fix

The active workspace/chat model endpoint in Odysseus was updated to use the correct local Docker-to-host route:

```text
http://host.docker.internal:11434/v1
```

After updating the active workspace endpoint, chat prompts worked again.

## Lesson Learned

When Odysseus can list models but chat returns `Error 503`, check both:

1. `.env` and container environment.
2. Docker-to-host connectivity.
3. UFW rules for Docker/private bridge traffic.
4. The active workspace/chat/provider endpoint inside the Odysseus UI.

The fourth item is easy to miss because model discovery can work while chat requests still fail.

## Useful Verification Commands

```bash
cd /opt/odysseus-ai/apps/odysseus

docker compose exec odysseus sh -lc 'env | sort | grep -Ei "OLLAMA|LLM|EMBED|APP_"'

docker compose exec odysseus sh -lc 'curl -sS http://host.docker.internal:11434/api/tags'

docker compose exec odysseus sh -lc 'curl -sS http://host.docker.internal:11434/v1/models'
```

## Public Documentation Note

Do not commit real internal IPs, credentials, Tailscale addresses, client names, or private endpoint details to the public repository.
This note intentionally uses sanitized endpoint examples only.
