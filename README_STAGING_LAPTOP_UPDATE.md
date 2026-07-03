# GoodWill Arch Staging Laptop Update

A Dell Inspiron 15 5566 laptop has been repurposed as the GoodWill staging/admin workstation.

The laptop is used for:

- SSH management of the GoodWill server.
- Browser access to Open WebUI, Odysseus, and Uptime Kuma over Tailscale.
- Public documentation work in the GitHub repo.
- Private local notes, screenshots, and troubleshooting records outside the public repo.
- Running a local `goodwill-check` script to verify access paths.

The AI services continue to run on the GoodWill server. The laptop is a control/admin workstation, not a second AI server.

Recommended repo docs added by this update:

- `docs/ARCH_STAGING_LAPTOP_SETUP.md`
- `docs/GOODWILL_STAGING_CHECK_SCRIPT.md`
- `config-examples/goodwill.env.example`
- `scripts/goodwill-check-laptop.example.sh`
