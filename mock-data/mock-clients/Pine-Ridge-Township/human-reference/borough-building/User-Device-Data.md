# Pine Ridge Township Borough Building - User Device Data

This file is the primary relationship index for Borough Building user-to-device lookups.

This version includes explicit reasoning-assistance fields for smaller local models.

---

## Primary User / Device Index

| User | User ID | Role | Device | OS | RAM_GB | Storage | Storage_Type | Below_16GB_RAM | Uses_HDD | Under_Spec_Device | Performance_Risk | Upgrade_Priority | Operational_Criticality | Allowed_Downtime | Common Apps | Built-In / Known Issues | Direct_Troubleshooting_Hint |
|---|---|---|---|---|---:|---|---|---|---|---|---|---|---|---|---|---|---|
| Alice Mercer | PRT-BOR-USER-001 | Borough Manager | PRT-BOR-WS-001 | Windows 11 Pro | 16 | 512GB SSD | SSD | No | No | No | Low | Low | Medium | 4 hours | Outlook, Teams, Word, Adobe Acrobat, MunicipalERP | Outlook credential prompts, Teams camera selection, PDF signing confusion | Hardware bottleneck is unlikely. Check Microsoft 365 authentication, Teams device settings, and Acrobat configuration before recommending upgrades. |
| Daniel Ortiz | PRT-BOR-USER-002 | Finance Clerk | PRT-BOR-WS-002 | Windows 10 Pro | 8 | 1TB HDD | HDD | Yes | Yes | Yes | High | High | High | 2 hours | Outlook, Excel, MunicipalERP Finance, CheckScan Utility | Slow login, long report generation, scanner delays, disk usage often high | This is a strong upgrade candidate. Check disk health, free space, startup load, RAM pressure, finance application path, and scanner service. |
| Grace Kim | PRT-BOR-USER-003 | Tax Collector | PRT-BOR-WS-003 | Windows 11 Pro | 16 | 256GB SSD | SSD | No | No | No | Low | Normal | High | 2 hours | Outlook, Excel, TaxSuite, Adobe Acrobat, Receipt Printer Utility | Mapped Tax share occasionally disconnects after password changes; receipt printer may select wrong tray | Focus on saved credentials, mapped-drive authentication, and printer preferences. Do not assume the SSD or RAM is the cause. |
| Robert Hayes | PRT-BOR-USER-004 | Code Enforcement Officer | PRT-BOR-LT-004 | Windows 11 Pro | 8 | 256GB SSD | SSD | Yes | No | Partial | Medium | Medium | Medium | 4 hours | Outlook, Teams, GIS Viewer, VPN Client, Camera Upload Utility | VPN may fail after sleep; camera sync occasionally stalls; limited RAM during GIS use | Check VPN adapter, device time, saved credentials, sleep state, and GIS memory use. Storage is SSD, so do not identify HDD slowness. |
| Jenna Price | PRT-BOR-USER-005 | Front Desk and Permits Clerk | PRT-BOR-WS-005 | Windows 10 Pro | 4 | 500GB HDD | HDD | Yes | Yes | Yes | Critical | High | High | 1 hour | Outlook, Chrome, PermitTrack, Label Printer Utility, Receipt Printer Utility | Very slow startup, browser tabs freeze, permit labels disconnect, Windows updates remain pending | This is the highest hardware-upgrade priority. Check RAM pressure, HDD health, free space, startup apps, updates, printer USB/power management, and consider replacement. |

---

## Quick RAM Lookup

| User | Device | RAM_GB | Below_16GB_RAM | Correct RAM Reasoning |
|---|---|---:|---|---|
| Alice Mercer | PRT-BOR-WS-001 | 16 | No | 16GB is equal to 16GB, not less than 16GB. |
| Daniel Ortiz | PRT-BOR-WS-002 | 8 | Yes | 8GB is less than 16GB. |
| Grace Kim | PRT-BOR-WS-003 | 16 | No | 16GB is equal to 16GB, not less than 16GB. |
| Robert Hayes | PRT-BOR-LT-004 | 8 | Yes | 8GB is less than 16GB. |
| Jenna Price | PRT-BOR-WS-005 | 4 | Yes | 4GB is less than 16GB. |

## Correct Answer: Users Below 16GB RAM

- Daniel Ortiz / PRT-BOR-WS-002 / 8GB
- Robert Hayes / PRT-BOR-LT-004 / 8GB
- Jenna Price / PRT-BOR-WS-005 / 4GB

Do not include Alice Mercer or Grace Kim because their devices have exactly 16GB.

---

## Upgrade Priority Lookup

| Rank | User | Device | Upgrade_Priority | Explicit Reason |
|---:|---|---|---|---|
| 1 | Jenna Price | PRT-BOR-WS-005 | High | 4GB RAM, HDD storage, Critical performance risk, front-desk workflow impact |
| 2 | Daniel Ortiz | PRT-BOR-WS-002 | High | 8GB RAM, HDD storage, High performance risk, finance workflow impact |
| 3 | Robert Hayes | PRT-BOR-LT-004 | Medium | 8GB RAM but SSD storage; upgrade may help GIS multitasking but is not as urgent |
| 4 | Grace Kim | PRT-BOR-WS-003 | Normal | 16GB RAM and SSD; troubleshoot access and printer settings first |
| 5 | Alice Mercer | PRT-BOR-WS-001 | Low | 16GB RAM and SSD; reported issues are not primarily hardware-related |

---

## Expected AI Behavior

The AI should:

1. Identify the exact user and assigned device.
2. Use explicit fields instead of recalculating.
3. Separate hardware risk from operational criticality.
4. Avoid recommending hardware upgrades for authentication, permissions, or printer-selection problems unless evidence supports it.
5. Treat Jenna and Daniel as the strongest upgrade candidates.
6. Never invent credentials, printer addresses, or permissions.
