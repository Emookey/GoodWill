# Mock MSP Testing Plan

Do not use real client data during this phase.

## Goal

Test whether Odysseus plus local models can help with realistic MSP workflows.

## Mock client knowledge base

Create fake documents such as:

```text
mock-clients/
├── client-a/
│   ├── network-info.md
│   ├── printer-list.md
│   ├── common-applications.md
│   ├── escalation-rules.md
│   └── known-issues.md
└── client-b/
    ├── network-info.md
    ├── printer-list.md
    └── escalation-rules.md
```

## Test categories

### Helpdesk troubleshooting

- Printer not printing
- iPad AirPrint issue
- Slow PC complaint
- Outlook mailbox missing
- VPN connection failure
- Cannot access shared folder
- Browser/app error
- New PC setup checklist

### SaaS/security alerts

- Suspicious login
- Impossible travel
- Multiple failed login attempts
- MFA fatigue
- OAuth consent alert
- Mail forwarding rule created
- Risky sign-in
- New device login

### Output quality checks

For each test, evaluate whether the model produces:

- Likely causes
- Clarifying questions
- Step-by-step troubleshooting
- What not to do
- Escalation criteria
- Client-facing update
- Internal ticket note
- Confidence level
- Risk rating

## Suggested result log format

```markdown
# Test Case: Printer Offline

## Prompt

Paste prompt here.

## Model

qwen2.5:1.5b

## Result Summary

What the model did well.

## Problems

What was wrong, missing, unsafe, or vague.

## Score

1-5

## Follow-up Prompt Needed?

Yes/No
```
