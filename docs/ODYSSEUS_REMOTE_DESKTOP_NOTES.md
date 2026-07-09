# Odysseus Server Remote Desktop Notes

Updated: 2026-07-09

## Purpose

A lightweight desktop environment was added to the Ubuntu Server host to make it easier to:

- browse project files
- review mock-data folders
- inspect notes and backups
- manage files visually
- interact with the system over a remote GUI when SSH is not ideal

The desktop is intended as a management layer only. The server remains primarily an Ubuntu Server / Docker / Ollama / Odysseus host.

## Chosen Approach

Recommended stack:

```text
Ubuntu Server
→ Xfce
→ xrdp
→ Remmina/RDP client over Tailscale
```

## Rationale

Xfce was chosen because it is lightweight compared to a full desktop environment.

xrdp was chosen because it allows standard RDP clients to connect to the server desktop.

The desktop should not replace SSH for normal administration. It is mainly for file inspection, mock-data organization, and occasional GUI convenience.

## Security Notes

Do not expose RDP publicly.

Recommended access pattern:

```text
RDP only over Tailscale/private network
No router port forwards
No public exposure of RDP, SSH, Ollama, Odysseus, Open WebUI, Uptime Kuma, or iDRAC
```

## Example Install Commands

```bash
sudo apt update

sudo apt install --no-install-recommends -y \
  xfce4 \
  xfce4-terminal \
  thunar \
  mousepad \
  dbus-x11 \
  xrdp \
  xorgxrdp

echo "xfce4-session" > ~/.xsession
chmod 644 ~/.xsession

sudo adduser xrdp ssl-cert
sudo systemctl enable --now xrdp
sudo systemctl restart xrdp
```

## Firewall Concept

Restrict RDP to Tailscale/private access only.

Example:

```bash
sudo ufw allow in on tailscale0 proto tcp to any port 3389 comment 'xrdp over Tailscale only'
sudo ufw status verbose
```

Do not use a broad public rule like:

```bash
sudo ufw allow 3389/tcp
```

## Current Status

The remote desktop setup was validated using Remmina from an Arch Linux staging laptop.

The layout is basic, but it is functional and lightweight enough for the current lab use.
