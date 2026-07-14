# SOP - Security Alert Triage

## Alert Types

- Suspicious login
- Impossible travel
- Repeated failed sign-ins
- MFA fatigue
- New device login
- Mail forwarding rule
- OAuth consent
- Risky sign-in

## Required Triage Fields

| Field | Requirement |
|---|---|
| Affected user | Must be identified |
| Department | Must be identified |
| Alert time | Record exact time when available |
| Source location/device | Record but do not assume it is accurate |
| User confirmation | Ask whether activity was expected |
| Security impact | Low, Medium, High, or Critical |
| Containment action | Record only actions actually performed |
| Escalation | Required for suspected compromise |

## Safe Immediate Actions

1. Tell the user not to approve unexpected prompts.
2. Verify the user's identity.
3. Confirm whether the activity was expected.
4. Reset credentials and revoke sessions when authorized.
5. Review mailbox forwarding and suspicious rules.
6. Preserve alert details.
7. Escalate suspected compromise.

## Police Department Rule

Any alert involving a police account, records account, dispatch account, or privileged account should receive elevated scrutiny and prompt escalation.

## Do Not Do

- Do not dismiss an alert solely because the location is nearby.
- Do not claim compromise without evidence.
- Do not disable MFA.
- Do not delete logs or alerts.
- Do not expose sensitive alert details in a client-facing update.
