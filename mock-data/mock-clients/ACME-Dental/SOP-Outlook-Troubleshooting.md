# SOP - Outlook Password Prompt Troubleshooting

## Purpose

Use this SOP when a user reports Outlook repeatedly asking for a password.

## Initial Questions

- Is webmail working?
- Is the issue affecting one user or multiple users?
- Did the user recently change their password?
- Is the user using a shared mailbox?
- Does the issue occur after reboot?

## Basic Troubleshooting Order

1. Confirm Microsoft 365 service status.
2. Confirm the user's password works in webmail.
3. Restart Outlook.
4. Check Windows Credential Manager for stale Microsoft/Office credentials.
5. Confirm Outlook is updated.
6. Check whether a shared mailbox is causing repeated auth prompts.
7. Create a new Outlook profile if simpler fixes fail.
8. Escalate if multiple users are affected or sign-in logs show unusual activity.

## Notes

- Do not immediately rebuild the profile without checking simpler causes.
- Do not assume the user's password is wrong if webmail works.
- Shared mailbox access can complicate Outlook authentication behavior.
