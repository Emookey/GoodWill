# SOP - Account Lockout and MFA

## Applies To

Both Pine Ridge Township clients.

## Identity Verification

Before resetting a password or changing MFA:

1. Verify the caller using the approved MSP identity-verification process.
2. Confirm the user's full name, department, and assigned device.
3. Confirm whether the user can access any Microsoft 365 service.
4. Check whether the problem began after a password change.
5. Ask whether the user received MFA prompts they did not initiate.

## Normal Lockout Workflow

1. Confirm account status.
2. Check for repeated failed sign-ins.
3. Ask about saved credentials on phones, Outlook, mapped drives, VPN clients, and old devices.
4. Unlock or reset only after identity verification.
5. Have the user sign out of stale sessions where appropriate.
6. Update stored credentials on approved devices.
7. Document the cause when known.

## MFA Fatigue or Unexpected Prompt Workflow

1. Tell the user not to approve unexpected prompts.
2. Treat repeated unrequested prompts as a potential security incident.
3. Reset the password after identity verification.
4. Revoke active sessions if authorized.
5. Review sign-in details and mailbox rules.
6. Escalate to the security contact.
7. Preserve relevant timestamps and alert details.

## Do Not Do

- Do not tell a user to approve a prompt to "make it stop."
- Do not disable MFA as the first response.
- Do not read a password aloud or store it in a ticket.
- Do not assume the alert is harmless because the user is still able to sign in.
