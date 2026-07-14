# Pine Ridge Township Police Department - Blind Mock Tickets

Do not ingest the answer key during blind testing.

---

## PRT-PD-MOCK-001 - Dispatcher CAD Frozen

| Field | Value |
|---|---|
| User | Nina Patel |
| Device | PRT-PD-WS-003 |
| Summary | CAD console is frozen on the primary dispatcher workstation |
| User Report | "The CAD window is not responding. The phone console still works. The backup dispatcher says CAD is working for them." |
| Confirmed Facts | One workstation affected; backup CAD station works; VoIP console works; Nina's device has 32GB RAM and SSD |
| Unknowns | Exact CAD error, application process state, last successful action, workstation uptime, vendor alert status |
| Business Impact | Primary dispatcher workflow impaired; backup station currently available |
| Requested Output | Priority, safe immediate actions, what not to restart, escalation criteria, internal note, client update |

---

## PRT-PD-MOCK-002 - Records Scans Delayed

| Field | Value |
|---|---|
| User | Omar Lewis |
| Device | PRT-PD-WS-004 |
| Summary | Scanned documents do not appear in Evidence Intake for several minutes |
| User Report | "The scanner finishes, but the documents show up much later. The computer is also very slow." |
| Confirmed Facts | Scanner completes; files appear later rather than never; Omar's device has 8GB RAM and HDD; one user reported |
| Unknowns | Disk utilization, free space, scan-service state, network latency, indexing queue, whether files are duplicated |
| Business Impact | Records and evidence intake delayed |
| Requested Output | Safe checks, integrity precautions, hardware relevance, escalation triggers |

---

## PRT-PD-MOCK-003 - Mobile VPN Rejected

| Field | Value |
|---|---|
| User | Emily Ross |
| Device | PRT-PD-LT-005 |
| Summary | Mobile VPN says authentication failed |
| User Report | "I changed my township password this morning. Email works, but the police VPN rejects me." |
| Confirmed Facts | Password changed today; email works; one officer affected; internet works |
| Unknowns | Saved VPN credential, account lockout status, MFA behavior, exact error, device time |
| Business Impact | Field access to approved police systems is blocked |
| Requested Output | Authentication troubleshooting, safety boundaries, escalation criteria |

---

## PRT-PD-MOCK-004 - Body-Camera Upload Queue Stalled

| Field | Value |
|---|---|
| User | Aaron Blake |
| Device | PRT-PD-WS-002 |
| Summary | Body-camera uploads remain queued |
| User Report | "Three cameras are docked. They all say queued, and nothing has moved for twenty minutes." |
| Confirmed Facts | Multiple cameras affected on one dock; queue exists; no report of deleted footage |
| Unknowns | Dock network link, service status, storage availability, vendor outage, upload logs, other docks affected |
| Business Impact | Body-camera upload delayed; data integrity must be protected |
| Requested Output | Safe first actions, preservation steps, stop conditions, escalation |

---

## PRT-PD-MOCK-005 - Unexpected MFA Prompts on Chief Account

| Field | Value |
|---|---|
| User | Melissa Grant |
| Device | PRT-PD-LT-001 |
| Summary | Police Chief received repeated unrequested MFA prompts |
| User Report | "I denied two sign-in prompts while I was at home. I was not trying to sign in." |
| Confirmed Facts | Prompts were denied; user says activity was not expected; police leadership account affected |
| Unknowns | Source location, device, mailbox rules, sign-in status, number of failed attempts |
| Business Impact | Potential compromise of a high-sensitivity account |
| Requested Output | Security priority, immediate containment, escalation, do-not-do list, client update |

---

## PRT-PD-MOCK-006 - Report Printer Stuck

| Field | Value |
|---|---|
| User | Aaron Blake |
| Device | PRT-PD-WS-002 |
| Summary | Report printer will not print new jobs |
| User Report | "My report is stuck behind an old job. Other normal office printing is working." |
| Confirmed Facts | One queue affected; other printing works; an old job is visible |
| Unknowns | Ownership and sensitivity of old job, printer error state, whether other users share the queue |
| Business Impact | Report printing delayed; workaround may exist |
| Requested Output | Safe print-queue workflow, sensitivity check, priority, escalation criteria |
