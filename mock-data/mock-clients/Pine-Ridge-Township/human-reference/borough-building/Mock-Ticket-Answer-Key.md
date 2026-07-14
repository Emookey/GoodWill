# Pine Ridge Township Borough Building - Mock Ticket Answer Key

Keep this file outside the model knowledge base during blind testing.

## PRT-BOR-MOCK-001

- Priority: Medium, potentially High if finance deadlines are blocked.
- Most likely causes:
  1. HDD saturation and low workstation performance.
  2. Low free disk space or disk health issue.
  3. 8GB RAM pressure during report generation.
  4. Application/server/network delay.
- Required first action: Compare local resource utilization and confirm whether other finance users are affected.
- Do not do: Do not immediately blame the server or replace hardware without checking utilization and scope.
- Escalation trigger: Disk health warning, multiple users affected, application server delay, or finance unable to meet a deadline.
- Hardware conclusion: Daniel is a legitimate SSD/RAM upgrade candidate.

## PRT-BOR-MOCK-002

- Priority: Medium.
- Most likely causes:
  1. Stale saved credentials after password change.
  2. Mapped-drive session using old credentials.
  3. Permission/group issue.
- Required first action: Confirm exact path/error and whether another approved user can access the share.
- Do not do: Do not add Grace to an admin or broad-access group as a test.
- Escalation trigger: Group membership appears incorrect or multiple users are affected.

## PRT-BOR-MOCK-003

- Priority: Medium to High because permit workflow is affected.
- Most likely causes:
  1. USB disconnect or power management.
  2. Loose/failed cable.
  3. Offline or stale print queue.
  4. Driver/device failure.
- Required first action: Check printer power/display, cable, Device Manager, and queue.
- Hardware conclusion: Jenna's workstation is under-spec, but that does not prove RAM/HDD caused the printer to disappear.
- Escalation trigger: Repeated disconnect after cable/power checks or failed hardware self-test.

## PRT-BOR-MOCK-004

- Priority: Medium.
- Most likely cause: VPN adapter/client failed to recover after sleep.
- Required first action: Record error, verify internet and device time, restart the VPN client/adapter.
- Do not do: Do not weaken VPN security or bypass approved access controls.
- Escalation trigger: Multiple remote users affected, authentication rejection persists, or site VPN is down.

## PRT-BOR-MOCK-005

- Priority: High security incident.
- Required first actions:
  1. Tell Alice not to approve prompts.
  2. Verify identity.
  3. Reset password and revoke sessions when authorized.
  4. Review sign-ins and mailbox forwarding rules.
  5. Escalate to security contact.
- Do not do: Do not disable MFA or dismiss the prompts.
- Confidence: High that security triage is required; low confidence about exact source until logs are reviewed.

## PRT-BOR-MOCK-006

- Priority: Low.
- Most likely causes:
  1. Windows "Let Windows manage my default printer."
  2. Logon script or policy recreating old queue.
  3. Application-specific saved printer.
- Required first action: Confirm current default-printer behavior and remove only the retired approved queue.
- Escalation trigger: Queue is redeployed by policy and requires administrative change.
