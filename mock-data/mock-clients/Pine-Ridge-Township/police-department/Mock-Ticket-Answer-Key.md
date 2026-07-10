# Pine Ridge Township Police Department - Mock Ticket Answer Key

Keep this file outside the model knowledge base during blind testing.

## PRT-PD-MOCK-001

- Priority: High, not yet Critical because backup CAD and VoIP are functioning.
- Most likely causes:
  1. Local CAD client process hung.
  2. Local application cache/session issue.
  3. Workstation-specific connectivity issue.
- Required first action: Confirm backup coverage, preserve error/time details, and check the local CAD process.
- Do not do: Do not restart the CAD server or network service because one client is affected.
- Escalation trigger: Backup CAD also fails, dispatch workflow becomes blocked, or approved local client restart fails.
- Hardware conclusion: 32GB RAM/SSD means hardware upgrade is not the primary recommendation.

## PRT-PD-MOCK-002

- Priority: High.
- Most likely causes:
  1. HDD saturation and indexing delay.
  2. Scan-service backlog.
  3. Low free space or disk health issue.
  4. Network/share latency.
- Required first action: Verify that files exist and are not duplicated before retrying.
- Integrity rule: Do not rescan repeatedly, rename, move, or delete evidence-intake files until status is known.
- Hardware conclusion: Omar is the highest upgrade priority.
- Escalation trigger: Missing files, duplicates, disk warnings, multiple users affected, or integrity uncertainty.

## PRT-PD-MOCK-003

- Priority: High if field workflow is blocked.
- Most likely causes:
  1. Stale saved VPN password.
  2. Account lockout from old credentials.
  3. MFA/session issue.
  4. Device time problem.
- Required first action: Verify identity, record exact error, check saved credentials and account status.
- Do not do: Do not bypass MFA, use another person's account, or weaken VPN controls.
- Escalation trigger: Repeated lockout, multiple officers affected, or authentication logs indicate security concern.

## PRT-PD-MOCK-004

- Priority: High.
- Most likely causes:
  1. Dock network link failure.
  2. Upload service queue/service issue.
  3. Vendor or storage outage.
- Required first action: Preserve queue state and timestamps; check dock link and whether other docks are affected.
- Do not do: Do not delete queued footage, remove files, factory-reset the dock, or repeatedly undock cameras without guidance.
- Escalation trigger: Multiple docks affected, integrity warning, storage failure, or queue does not resume after approved checks.

## PRT-PD-MOCK-005

- Priority: High security incident.
- Required first actions:
  1. Tell Melissa not to approve prompts.
  2. Verify identity.
  3. Reset password/revoke sessions when authorized.
  4. Review sign-ins and mailbox rules.
  5. Escalate immediately.
- Do not do: Do not disable MFA or include sensitive sign-in details in a broad client update.
- Confidence: High that security response is required.

## PRT-PD-MOCK-006

- Priority: Medium.
- Required first action: Confirm printer state and identify the owner/purpose of the old job before clearing it.
- Do not do: Do not delete an unknown potentially sensitive print job without confirming authorization.
- Likely cause: Stuck/corrupt print job or printer error.
- Escalation trigger: Queue affects multiple users, printer hardware fault, or sensitive-job ownership cannot be established.
