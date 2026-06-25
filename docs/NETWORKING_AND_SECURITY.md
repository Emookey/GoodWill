# Networking and Security

## Access model

Remote access should stay private through Tailscale.

Do not publicly expose:

- SSH
- Open WebUI
- Odysseus
- Ollama
- Uptime Kuma
- iDRAC
- Raw API/model ports

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
<TAILSCALE_IP>
<LAN_IP>
<UBUNTU_USER>
<IDRAC_IP>
<CLIENT_NAME>
```

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

## SSH hardening goals

Future SSH hardening:

- Use SSH keys
- Disable root SSH login
- Disable password login after key access is confirmed
- Keep at least one confirmed recovery path before tightening access

## iDRAC notes

- Do not leave default credentials in place.
- Do not expose iDRAC to the public internet.
- Keep iDRAC reachable only from a trusted local/admin network.

## Client data rule

This lab should use mock client data only until:

- The workplace approves the design
- Access controls are defined
- Logging/auditing is planned
- Backup/restore is tested
- Data boundaries are clear
- A policy exists for what the AI may access
