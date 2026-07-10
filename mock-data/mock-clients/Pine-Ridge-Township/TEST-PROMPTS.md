# Pine Ridge Township - Suggested Local Model Test Prompts

Use one client at a time whenever possible. Smaller models perform better when the prompt names the exact files and explicit fields to use.

## User and Device Lookup

```text
Using only the Pine Ridge Township Borough Building User-Device-Data file:
1. Identify the users with less than 16GB RAM.
2. Use the Below_16GB_RAM field directly.
3. Do not include users where Below_16GB_RAM is No.
4. Rank the included devices by Upgrade_Priority.
```

```text
Using only the Police Department User-Device-Data file:
Which workstation has the highest Operational_Criticality?
Do not confuse operational criticality with weak hardware.
Explain why a well-equipped dispatcher workstation can still be operationally critical.
```

## Cross-Client Permission Reasoning

```text
A Borough Building user asks for access to the PoliceRecords share.
Using the Township-Client-Index, explain:
1. Whether access should be assumed.
2. What approval is required.
3. What the technician must not do.
```

## Ticket Triage

```text
Use the relevant client knowledge base, user-device data, and SOP files.
Analyze ticket PRT-PD-MOCK-003.

Return:
- Confirmed facts
- Unknown information
- Business impact
- Risk rating
- Likely causes ranked most likely first
- Safe troubleshooting steps
- Stop conditions
- Escalation criteria
- Internal ticket note
- Client-facing update
- Confidence level

Do not invent any facts.
```

## Hardware Upgrade Reasoning

```text
Compare all Borough Building workstations.
Use these fields directly:
- RAM_GB
- Below_16GB_RAM
- Storage_Type
- Uses_HDD
- Under_Spec_Device
- Performance_Risk
- Upgrade_Priority

Recommend the first two upgrade candidates and explain why.
Do not recommend an upgrade solely because a user has an application problem.
```

## Security Alert Reasoning

```text
A user reports repeated MFA prompts they did not initiate.
Use the Account Lockout and MFA SOP and the Security Alert Triage SOP.
Provide safe immediate actions.
Do not tell the user to approve a prompt.
Do not disable MFA.
```

## Output Quality Test

```text
After analyzing the ticket, provide two separate outputs:

Internal ticket note:
- technical,
- concise,
- includes facts, actions, result, and next step.

Client-facing update:
- plain language,
- no unnecessary technical detail,
- no unsupported promise,
- no blame.
```
