# Pine Ridge Township Police Department - Client Knowledge Base

## Client Summary

| Field | Value |
|---|---|
| Client ID | PRT-PD |
| Site | Pine Ridge Township Police Department |
| Primary Functions | Dispatch, patrol, records, police administration |
| Operational Criticality | High to Critical |
| Public-Safety Critical Areas | Dispatch CAD, VoIP console, RMS access, mobile VPN |
| Sensitive Areas | Police records, evidence intake, body-camera uploads |
| Real Police Data | No; fictional test data only |

## Network and Services

| Resource | Name | Purpose | Explicit Rule |
|---|---|---|---|
| Township file server | PR-TW-FS01 | Hosts approved police shares | Shared server does not grant Borough access |
| Police records share | `\\PR-TW-FS01\PoliceRecords` | Authorized police records | Permission changes require approval |
| Evidence intake share | `\\PR-TW-FS01\EvidenceIntake` | Authorized evidence intake | Do not move, rename, delete, or alter evidence files during basic troubleshooting |
| Mobile VPN | Police Mobile VPN | Remote approved access | Do not bypass MFA or weaken encryption |
| CAD service | PRT-PD-CAD | Dispatch and call workflow | Multi-user outage is Critical |
| RMS service | PRT-PD-RMS | Records management | Multi-user outage is High; dispatch impact may raise priority |
| Body-camera service | PRT-PD-BCS | Upload and sync | Preserve queue/log details; do not delete footage |
| Microsoft 365 | Shared township tenant | Email and Teams | Police alerts receive elevated scrutiny |

## Printers and Peripherals

| Device | Area | Connection | Primary User | Known Pattern |
|---|---|---|---|---|
| PRT-PD-MFP-01 | Records | Network | Omar | Large scans may stall if workstation disk is saturated |
| PRT-PD-SCAN-01 | Records | USB | Omar | Scan service may not start after Windows updates |
| PRT-PD-ECITE-01 | Patrol laptop kit | Bluetooth/USB | Emily | Pairing may drop after sleep or driver update |
| PRT-PD-REPORT-01 | Sergeant office | Network | Aaron | Stuck queue can block reports |
| PRT-PD-DISPATCH-01 | Dispatch | Network | Nina | Do not clear unknown dispatch jobs without confirming purpose |

## Application Criticality

| Application | Criticality | Immediate Escalation Condition |
|---|---|---|
| CAD Console | Critical | Dispatcher cannot process calls or multiple stations affected |
| VoIP Console | Critical | Dispatch cannot receive or place required calls |
| RMS Client | High | Multiple users affected or dispatch/records workflow blocked |
| BodyCam Sync | High | Uploads fail across multiple docks or data integrity is uncertain |
| Evidence Intake | High | Files cannot be safely ingested or integrity is uncertain |
| eCitation | Medium to High | Officer cannot complete citation workflow and no approved fallback exists |
| Outlook/Teams | Medium to High | Depends on role and incident context |

## Escalation Rules

1. CAD or dispatch VoIP outage: Critical, immediate senior escalation.
2. Multi-user RMS outage: High, vendor/server escalation after basic scope checks.
3. Evidence or body-camera integrity concern: Stop and escalate; do not delete or rename content.
4. Unexpected MFA prompts or suspicious sign-in: High security incident.
5. One office printer issue with workaround: Medium or Low.
6. Mobile VPN issue affecting one officer: High if field workflow is blocked, otherwise Medium.
7. Permission request: Never grant broad access without documented approval.

## Known Environment Patterns

- CAD freezing on one dispatcher station may be a local client/service issue, but multi-station failures suggest server/network/vendor scope.
- Omar's HDD-based workstation can cause scan/index delays.
- Emily's VPN issues often involve network type, device time, saved credentials, or sleep state.
- Body-camera upload issues require preserving queue and log information.
- Dispatch workstation hardware is adequate; application or service problems should be investigated before recommending upgrades.
