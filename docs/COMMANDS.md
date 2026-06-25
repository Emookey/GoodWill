# Useful Commands

## Odysseus

```bash
cd /opt/odysseus-ai/apps/odysseus
docker compose ps
docker compose logs -f odysseus
docker compose restart
```

## Ollama

```bash
ollama list
sudo systemctl status ollama --no-pager
curl http://127.0.0.1:11434/api/tags
curl http://127.0.0.1:11434/v1/models
```

## Uptime Kuma

```bash
cd /opt/odysseus-ai/apps/uptime-kuma
docker compose ps
docker compose logs -f
```

## Docker cleanup checks

```bash
docker system df
docker container prune
docker image prune
```

Avoid unless certain:

```bash
docker volume prune
```

## Disk cleanup

```bash
ncdu ~
sudo ncdu /opt
trash-list
trash-restore
trash-empty 7
```
