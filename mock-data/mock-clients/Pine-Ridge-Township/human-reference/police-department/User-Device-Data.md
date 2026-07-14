# Pine Ridge Township Police Department - User Device Data

This file is the primary relationship index for Police Department user-to-device lookups.

This version includes explicit reasoning-assistance fields for smaller local models.

---

## Primary User / Device Index

| User | User ID | Role | Device | OS | RAM_GB | Storage | Storage_Type | Below_16GB_RAM | Uses_HDD | Under_Spec_Device | Performance_Risk | Upgrade_Priority | Operational_Criticality | Allowed_Downtime | Common Apps | Built-In / Known Issues | Direct_Troubleshooting_Hint |
|---|---|---|---|---|---:|---|---|---|---|---|---|---|---|---|---|---|---|
| Melissa Grant | PRT-PD-USER-001 | Police Chief | PRT-PD-LT-001 | Windows 11 Pro | 16 | 512GB SSD | SSD | No | No | No | Low | Low | High | 2 hours | Outlook, Teams, RMS Portal, VPN Client, Adobe Acrobat | VPN prompts after password changes; dock audio confusion | Hardware is adequate. Focus on authentication, VPN, dock, and application access. |
| Aaron Blake | PRT-PD-USER-002 | Patrol Sergeant | PRT-PD-WS-002 | Windows 11 Pro | 16 | 512GB SSD | SSD | No | No | No | Low | Normal | High | 1 hour | CAD Viewer, RMS Client, BodyCam Sync, Outlook, Chrome | Body-camera upload queue may stall; CAD viewer may need service restart | Do not recommend hardware first. Check application service, dock connectivity, queue, network, and vendor status. |
| Nina Patel | PRT-PD-USER-003 | Dispatcher | PRT-PD-WS-003 | Windows 11 Pro | 32 | 1TB SSD | SSD | No | No | No | Low | Low | Critical | 15 minutes | CAD Console, Dispatch Mapping, VoIP Console, RMS Query, Outlook | CAD window can freeze after long uptime; audio device selection may change | This workstation is powerful but operationally critical. Treat CAD/dispatch outages as Critical even though hardware risk is Low. |
| Omar Lewis | PRT-PD-USER-004 | Records Clerk | PRT-PD-WS-004 | Windows 10 Pro | 8 | 1TB HDD | HDD | Yes | Yes | Yes | High | High | High | 1 hour | RMS Client, Evidence Intake, Scan Utility, Outlook, Excel | Slow indexing, scanner delays, high disk utilization, large PDF handling | Strong upgrade candidate. Check disk health, free space, RAM pressure, scanner service, and evidence-share connectivity. |
| Emily Ross | PRT-PD-USER-005 | Patrol Officer | PRT-PD-LT-005 | Windows 11 Pro | 8 | 256GB SSD | SSD | Yes | No | Partial | Medium | Medium | High | 1 hour | Mobile VPN, eCitation, RMS Mobile, BodyCam Client, Outlook | VPN can fail on public networks; eCitation printer pairing may drop; limited RAM | Storage is SSD. Focus on VPN/network, Bluetooth/USB printer pairing, and 8GB RAM only when multitasking symptoms support it. |

---

## Quick RAM Lookup

| User | Device | RAM_GB | Below_16GB_RAM | Correct RAM Reasoning |
|---|---|---:|---|---|
| Melissa Grant | PRT-PD-LT-001 | 16 | No | 16GB is equal to 16GB, not less than 16GB. |
| Aaron Blake | PRT-PD-WS-002 | 16 | No | 16GB is equal to 16GB, not less than 16GB. |
| Nina Patel | PRT-PD-WS-003 | 32 | No | 32GB is greater than 16GB. |
| Omar Lewis | PRT-PD-WS-004 | 8 | Yes | 8GB is less than 16GB. |
| Emily Ross | PRT-PD-LT-005 | 8 | Yes | 8GB is less than 16GB. |

## Correct Answer: Users Below 16GB RAM

- Omar Lewis / PRT-PD-WS-004 / 8GB
- Emily Ross / PRT-PD-LT-005 / 8GB

Do not include Melissa Grant or Aaron Blake because their devices have exactly 16GB.
Do not include Nina Patel because her device has 32GB.

---

## Operational Criticality Versus Hardware Risk

| User | Device | Hardware Risk | Operational Criticality | Correct Interpretation |
|---|---|---|---|---|
| Nina Patel | PRT-PD-WS-003 | Low | Critical | A well-equipped device can still be critical because dispatch depends on it |
| Omar Lewis | PRT-PD-WS-004 | High | High | Both hardware and business risk are high |
| Emily Ross | PRT-PD-LT-005 | Medium | High | Mobile access is important, but device has SSD and is not the weakest hardware overall |
| Aaron Blake | PRT-PD-WS-002 | Low | High | Application and body-camera issues should be checked before hardware replacement |
| Melissa Grant | PRT-PD-LT-001 | Low | High | Executive/command access is important, but hardware is adequate |

## Upgrade Priority Lookup

1. Omar Lewis / PRT-PD-WS-004
   - 8GB RAM
   - 1TB HDD
   - Under_Spec_Device = Yes
   - Performance_Risk = High
   - Upgrade_Priority = High

2. Emily Ross / PRT-PD-LT-005
   - 8GB RAM
   - SSD storage
   - Under_Spec_Device = Partial
   - Performance_Risk = Medium
   - Upgrade_Priority = Medium

Nina Patel should not be treated as an upgrade priority merely because her role is critical.

---

## Expected AI Behavior

1. Distinguish operational criticality from hardware weakness.
2. Treat dispatcher CAD/VoIP outages as Critical.
3. Treat Omar as the strongest hardware upgrade candidate.
4. Never modify evidence, records, CAD, or dispatch data during basic troubleshooting.
5. Never invent case information, credentials, access rights, or security details.
6. Escalate suspected compromise or multi-user public-safety application outages promptly.
