# Pine Ridge Township Borough Building - Blind Mock Tickets

Do not ingest the answer key during blind testing.

---

## PRT-BOR-MOCK-001 - Finance Application Very Slow

| Field | Value |
|---|---|
| User | Daniel Ortiz |
| Device | PRT-BOR-WS-002 |
| Summary | MunicipalERP Finance is extremely slow |
| User Report | "Reports take about five minutes and the entire computer freezes while they load." |
| Confirmed Facts | One user affected; device has 8GB RAM and 1TB HDD; internet browsing works; issue is worse during report generation |
| Unknowns | Free disk space, disk health, CPU/RAM/disk utilization, whether other finance users are affected, application server response time |
| Business Impact | Finance work is delayed |
| Requested Output | Likely causes, checks in order, upgrade relevance, escalation criteria, internal note, client update |

---

## PRT-BOR-MOCK-002 - Tax Share Access Denied

| Field | Value |
|---|---|
| User | Grace Kim |
| Device | PRT-BOR-WS-003 |
| Summary | Access denied to the Tax share |
| User Report | "I changed my password yesterday. Outlook works, but the T drive says access denied." |
| Confirmed Facts | Password changed yesterday; Outlook works; only the Tax share is reported affected; Grace previously had approved access |
| Unknowns | Whether saved credentials remain, whether other users are affected, exact error text, group membership status |
| Business Impact | Tax documents cannot be opened |
| Requested Output | Safe access troubleshooting, permission boundaries, what not to do, escalation criteria |

---

## PRT-BOR-MOCK-003 - Permit Label Printer Offline

| Field | Value |
|---|---|
| User | Jenna Price |
| Device | PRT-BOR-WS-005 |
| Summary | Permit label printer shows offline |
| User Report | "The label printer disappeared again. The receipt printer still works." |
| Confirmed Facts | Label printer affected; receipt printer works; Jenna's workstation is under-spec; issue affects permit labels |
| Unknowns | Power state, USB connection, Device Manager status, queue state, cable condition, whether printer works from another PC |
| Business Impact | Permit labels cannot be printed |
| Requested Output | Printer troubleshooting in safe order, distinction between hardware slowness and USB issue, escalation criteria |

---

## PRT-BOR-MOCK-004 - Field Laptop VPN Failure

| Field | Value |
|---|---|
| User | Robert Hayes |
| Device | PRT-BOR-LT-004 |
| Summary | Township VPN will not connect after laptop sleep |
| User Report | "It worked this morning. I closed the lid at lunch and now the VPN just spins." |
| Confirmed Facts | VPN worked earlier; problem began after sleep; normal internet access works |
| Unknowns | VPN error code, adapter state, device time, saved credential status, whether reboot has been attempted |
| Business Impact | Remote access to approved municipal resources is blocked |
| Requested Output | Safe first steps, likely cause ranking, stop conditions, client-facing update |

---

## PRT-BOR-MOCK-005 - Unexpected MFA Prompts

| Field | Value |
|---|---|
| User | Alice Mercer |
| Device | PRT-BOR-WS-001 |
| Summary | Repeated MFA prompts not initiated by user |
| User Report | "My phone asked me to approve a login three times overnight. I denied them." |
| Confirmed Facts | User denied prompts; prompts were unexpected; Borough Manager account affected |
| Unknowns | Sign-in location, source device, failed-login count, mailbox rules, session activity |
| Business Impact | Potential account compromise |
| Requested Output | Immediate safety steps, security priority, escalation, what not to do, internal note, client update |

---

## PRT-BOR-MOCK-006 - Old Printer Keeps Becoming Default

| Field | Value |
|---|---|
| User | Grace Kim |
| Device | PRT-BOR-WS-003 |
| Summary | Retired printer queue becomes the default |
| User Report | "Every few days Windows switches back to the old copier and my jobs fail." |
| Confirmed Facts | Old queue remains installed; current MFP works when manually selected; one user affected |
| Unknowns | Windows default-printer management setting, logon script behavior, application-specific printer setting |
| Business Impact | Minor printing delays |
| Requested Output | Low-risk troubleshooting, priority rating, permanent-fix checks |
