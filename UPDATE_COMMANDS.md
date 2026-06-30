# Repository Update Commands

After copying these files into your local GitHub project folder, run the following from PowerShell inside the repository root:

```powershell
git status
git add README.md docs/HARDWARE.md docs/TROUBLESHOOTING_LOG.md docs/CHANGELOG.md docs/PSU_TESTING.md
git commit -m "Document 1100W PSU compatibility test"
git push
```

## What to expect

`git status` should show modified files and one new file, `docs/PSU_TESTING.md`.

`git add ...` stages those changes.

`git commit ...` creates a local snapshot of the PSU test documentation.

`git push` uploads the commit to GitHub. After it succeeds, refresh the GitHub repository page and confirm:

- README includes the recent PSU compatibility test summary.
- `docs/PSU_TESTING.md` exists.
- `docs/HARDWARE.md` includes the PSU update.
- `docs/TROUBLESHOOTING_LOG.md` includes the vendor mismatch incident.
- `docs/CHANGELOG.md` includes the 2026-06-25 update.

## Suggested commit message

```text
Document 1100W PSU compatibility test
```
