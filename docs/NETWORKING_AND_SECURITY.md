# Networking and Security

## Access model

Remote access should stay private through Tailscale or another trusted private-access layer.

Do not publicly expose:

- SSH
- Open WebUI
- Odysseus
- Ollama
- Uptime Kuma
- iDRAC
- Raw API/model ports

---

## Docker port binding notes

For this lab, a durable pattern is to bind web services to all host interfaces and then rely on firewall/private-access rules to control who can reach them.

Examples:

```text
Open WebUI: 3000:8080
Odysseus:   7000:7000
```

or explicitly:

```text
0.0.0.0:3000:8080
0.0.0.0:7000:7000
```

Avoid committing real private IP-specific bindings to the public repository.

Private local files may use host-specific values, but public examples should stay sanitized.

---

## Public repo safety

Do not commit:

- Real `.env` files
- Passwords
- API keys
- Tailscale IPs
- Internal LAN IPs
- iDRAC addresses
- Real usernames
- Client names
- Client data
- Backup archives
- Docker volume data
- SSH keys
- TLS certificates/private keys

Use placeholders in public documentation:

```text
<tailscale-ip>
<server-lan-ip>
<your-domain>
<username>
<secret>
```

---

## Firewall notes

UFW should deny incoming traffic by default and allow required access only through trusted interfaces.

Example pattern:

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw allow in on tailscale0 to any port 22 proto tcp
sudo ufw allow in on tailscale0 to any port 3000 proto tcp
sudo ufw allow in on tailscale0 to any port 3001 proto tcp
sudo ufw allow in on tailscale0 to any port 7000 proto tcp
sudo ufw allow in on tailscale0 to any port 11434 proto tcp

sudo ufw status verbose
```

Do not use these example rules blindly on a remote system unless a confirmed recovery path exists.

---

## Service monitor targets

If Uptime Kuma runs with host networking, local monitor targets can be used:

```text
SSH:        127.0.0.1 port 22
Ollama:     http://127.0.0.1:11434/api/tags
Open WebUI: http://127.0.0.1:3000
Odysseus:   http://127.0.0.1:7000
```

If monitoring the private remote-access route specifically, use sanitized placeholders in public docs:

```text
Open WebUI: http://<tailscale-ip>:3000
Odysseus:   http://<tailscale-ip>:7000
Ollama:     http://<tailscale-ip>:11434
Uptime Kuma:http://<tailscale-ip>:3001
```

---

## SSH hardening goals

Future SSH hardening:

- Use SSH keys.
- Disable root SSH login.
- Disable password login after key access is confirmed.
- Keep at least one confirmed recovery path before tightening access.

---

## iDRAC notes

- Do not leave default credentials in place.
- Do not expose iDRAC to the public internet.
- Keep iDRAC reachable only from a trusted local/admin network.

---

## Client data rule

This lab should use mock client data only until:

- The workplace approves the design.
- Access controls are defined.
- Logging/auditing is planned.
- Backup/restore is tested.
- Data boundaries are clear.
- A policy exists for what the AI may access.
