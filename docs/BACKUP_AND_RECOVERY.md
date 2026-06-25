# Backup and Recovery

## Important paths

Main project path:

```text
/opt/odysseus-ai
```

Application path:

```text
/opt/odysseus-ai/apps
```

Backup path:

```text
/opt/odysseus-ai/backups
```

Notes path:

```text
/opt/odysseus-ai/notes
```

## Configs to back up

Back up these whenever the system reaches a known-good state:

```text
/etc/netplan/
/etc/ssh/
/etc/systemd/system/ollama.service.d/override.conf
/opt/odysseus-ai/apps/odysseus/.env
/opt/odysseus-ai/apps/odysseus/docker-compose.override.yml
/opt/odysseus-ai/apps/uptime-kuma/compose.yml
```

## Docker volumes/data

Docker app data can be critical. Be careful with Docker cleanup commands.

Avoid this unless you know exactly what will be removed:

```bash
docker volume prune
```

Useful read-only space check:

```bash
docker system df
```

## Manual backup example

Example archive pattern:

```bash
tar czf /opt/odysseus-ai/odysseus-ai-backup-$(date +%F).tar.gz -C /opt odysseus-ai/backups
```

Copy backups off-server to another machine, external drive, NAS, or other safe storage.

## Uptime Kuma backup notes

Back up:

```text
/opt/odysseus-ai/apps/uptime-kuma/compose.yml
/opt/odysseus-ai/apps/uptime-kuma/data/
```

## Known-good state checklist

After a major fix, save:

- Odysseus `.env`
- Odysseus Compose override
- Ollama systemd override
- Uptime Kuma Compose file
- UFW status
- Tailscale status
- Installed model list
- Notes describing what changed

Example:

```bash
ollama list > /opt/odysseus-ai/backups/ollama-model-list.txt
sudo ufw status verbose > /opt/odysseus-ai/backups/system/ufw-status.txt
tailscale status > /opt/odysseus-ai/backups/system/tailscale-status.txt
```
