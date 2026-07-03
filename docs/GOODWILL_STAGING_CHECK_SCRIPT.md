# GoodWill Staging Laptop Check Script

## Purpose

The staging laptop uses a local `goodwill-check` helper script to verify that the laptop can still reach the GoodWill project services.

The script checks:

- Required local commands.
- Internet connectivity.
- NetworkManager status.
- Tailscale daemon status.
- Tailscale status output.
- SSH access to the GoodWill server.
- Open WebUI reachability.
- Odysseus reachability.
- Uptime Kuma reachability.
- Ollama API reachability.
- Local Git repo status.
- Optional remote server-side check script.

## Private config

The script reads local values from:

```text
~/.config/goodwill/goodwill.env
```

Use the sanitized example in:

```text
config-examples/goodwill.env.example
```

The real config file should be private and permission-restricted:

```bash
chmod 600 ~/.config/goodwill/goodwill.env
```

## Important Odysseus check note

A strict `curl -I` / HEAD request can create a false failure for some web apps.

The staging laptop script uses a normal request with redirect following and accepts common reachable status codes such as:

```text
200, 201, 202, 204, 301, 302, 303, 307, 308, 401, 403
```

This avoids incorrectly reporting Odysseus as down when the browser and Uptime Kuma can reach it.

## SSH key/passphrase note

The script uses BatchMode SSH so it only passes if key-based authentication is ready.

If the SSH key has a passphrase, start an agent and add the key:

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

Then test:

```bash
ssh -o BatchMode=yes -o ConnectTimeout=5 user@goodwill-hostname 'echo SSH_OK'
```

Expected output:

```text
SSH_OK
```
