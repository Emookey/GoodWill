# Apply GoodWill Arch Staging Laptop Update

This update package adds sanitized documentation and example files for the Arch Linux staging/admin laptop used with the GoodWill AI workspace project.

## Files included

```text
README_STAGING_LAPTOP_UPDATE.md
docs/ARCH_STAGING_LAPTOP_SETUP.md
docs/GOODWILL_STAGING_CHECK_SCRIPT.md
docs/CHANGELOG_ARCH_STAGING_LAPTOP_2026-07-03.md
config-examples/goodwill.env.example
scripts/goodwill-check-laptop.example.sh
```

## Privacy reminder

Do not commit real LAN IPs, Tailscale IPs, passwords, `.env` files, SSH private keys, raw logs, screenshots with sensitive details, backups, or private project summaries.

The real private workspace should stay outside the public repo, for example:

```text
~/GoodWill-Lab
~/.config/goodwill/goodwill.env
~/bin/goodwill-check
```

## Suggested Git workflow

From the root of your local `GoodWill` repo after copying/extracting these files:

```bash
git status
git add README_STAGING_LAPTOP_UPDATE.md docs/ARCH_STAGING_LAPTOP_SETUP.md docs/GOODWILL_STAGING_CHECK_SCRIPT.md docs/CHANGELOG_ARCH_STAGING_LAPTOP_2026-07-03.md config-examples/goodwill.env.example scripts/goodwill-check-laptop.example.sh APPLY_UPDATE.md
git commit -m "Document Arch staging laptop setup"
git push
```

Review every file before pushing.
