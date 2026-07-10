# Pine Ridge Township Borough Building - Resolved Ticket History

Use this file as historical pattern data. These tickets are fictional.

| Ticket ID | User | Device | Issue | Confirmed Cause | Resolution | Priority | Escalated |
|---|---|---|---|---|---|---|---|
| PRT-BOR-HIST-001 | Grace Kim | PRT-BOR-WS-003 | Tax share disconnected after password change | Stale saved Windows credentials | Removed stale credential, reauthenticated, remapped approved share | Medium | No |
| PRT-BOR-HIST-002 | Daniel Ortiz | PRT-BOR-WS-002 | MunicipalERP reports took several minutes | HDD at high active time, low free space, heavy startup load | Cleared approved temporary files, reduced startup load, documented SSD/RAM upgrade recommendation | Medium | No |
| PRT-BOR-HIST-003 | Jenna Price | PRT-BOR-WS-005 | Permit label printer disconnected repeatedly | USB selective suspend and loose USB cable | Replaced cable, disabled power saving for affected USB hub, tested labels | Medium | No |
| PRT-BOR-HIST-004 | Alice Mercer | PRT-BOR-WS-001 | Outlook repeatedly requested password | Stale Microsoft 365 session after password reset | Signed out, cleared approved cached token, signed back in, verified mail flow | Medium | No |
| PRT-BOR-HIST-005 | Robert Hayes | PRT-BOR-LT-004 | VPN failed after laptop resumed from sleep | VPN virtual adapter did not recover after sleep | Restarted VPN adapter/client, verified device time and connection | Medium | No |
| PRT-BOR-HIST-006 | Grace Kim | PRT-BOR-WS-003 | Receipt printer printed to wrong tray | Incorrect printer preference | Selected approved paper size and tray, printed test receipt | Low | No |

## Historical Pattern Rules

- Do not assume every repeated issue has the same cause.
- Use the history to rank likely causes, not to skip verification.
- A prior resolution is not proof that the current ticket has the same root cause.
- Hardware upgrades remain appropriate for Daniel and Jenna, but access and printer issues still require issue-specific troubleshooting.
