# Arch Staging Laptop Setup

## Purpose

The Arch staging laptop is the admin/control workstation for the GoodWill AI workspace project.

It is intended to provide a clean workstation for:

- SSH access to the GoodWill server.
- Browser access to Open WebUI, Odysseus, and Uptime Kuma.
- GitHub documentation updates.
- Project notes and sanitized documentation preparation.
- Local access checks through a helper script.

The laptop is not intended to replace the GoodWill server or run the main AI stack.

## Hardware

- Dell Inspiron 15 5566.
- Repurposed older work laptop.
- Internal Atheros Wi-Fi may produce `ath9k` / PCIe AER messages in Linux.

The `ath9k` / AER messages may be noisy but are not automatically an install blocker. If networking is unreliable, use Ethernet, USB Ethernet, phone tethering, or another Wi-Fi adapter.

## Install choices

Recommended/used configuration:

```text
Arch Linux
UEFI boot
AHCI storage mode
Secure Boot disabled
KDE Plasma
Plasma Login Manager
NetworkManager default backend
Dolphin
Konsole
Opera GX
```

## Directory layout

Public/sanitized repo clone:

```text
~/Projects/GoodWill
```

Private local workspace:

```text
~/GoodWill-Lab
```

Recommended private subfolders:

```text
~/GoodWill-Lab/notes
~/GoodWill-Lab/screenshots
~/GoodWill-Lab/logs
~/GoodWill-Lab/configs
~/GoodWill-Lab/backups
~/GoodWill-Lab/repo-updates
~/GoodWill-Lab/mock-data
~/GoodWill-Lab/server-snapshots
~/GoodWill-Lab/install-notes
~/GoodWill-Lab/scripts
```

Private script config:

```text
~/.config/goodwill/goodwill.env
```

Local helper scripts:

```text
~/bin
```

## Confirmed working state

- Arch boots into the desktop environment.
- KDE Plasma works.
- Dolphin and Konsole work.
- Opera GX works.
- GoodWill repo is cloned under `~/Projects/GoodWill`.
- SSH to the GoodWill server works.
- Open WebUI is reachable over Tailscale.
- Odysseus is reachable over Tailscale.
- Uptime Kuma is reachable over Tailscale.
- Open WebUI and Odysseus can still see the server-side models.
- Local `goodwill-check` runs cleanly.

## Privacy rules

Do not commit:

- Real LAN IPs.
- Tailscale IPs.
- Passwords.
- `.env` files.
- SSH private keys.
- Raw logs.
- Unsanitized screenshots.
- Backups.
- Raw private project summaries.
- Real client data.

Use sanitized examples only.
