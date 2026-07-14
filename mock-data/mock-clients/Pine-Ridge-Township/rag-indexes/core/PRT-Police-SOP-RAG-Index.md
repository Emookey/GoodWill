# Pine Ridge Township Police SOP RAG Index

Police-specific atomic SOP records. These override shared SOPs when public-safety, records, evidence, dispatch, or mobile workflows are involved.

SOP_ACTION_RECORD
SOP_ID: PRT-PD-SOP-CAD
Client_ID: PRT-PD
Trigger: CAD or dispatch workstation issue
Required_Actions: Confirm backup dispatch capability, affected station count, VoIP status, exact error, timestamp, and last successful action; check local client before server-wide action
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: PRT-PD-SOP-CAD
Client_ID: PRT-PD
Do_Not_Do: Do not restart the CAD server for one client, alter dispatch records, clear data without approval, or delay escalation when workflow is blocked
Escalation_Trigger: Backup unavailable, multiple stations affected, or approved local restart fails
END_SOP_GUARDRAIL_RECORD

SOP_ACTION_RECORD
SOP_ID: PRT-PD-SOP-RECORDS
Client_ID: PRT-PD
Trigger: RMS, Police Records, or Evidence Intake issue
Required_Actions: Confirm application or share, authorization, scope, timestamps, queue state, and file presence; avoid duplicate ingestion
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: PRT-PD-SOP-RECORDS
Client_ID: PRT-PD
Do_Not_Do: Do not delete, rename, move, or edit evidence files; do not grant broad permissions or copy sensitive data into a general ticket
Escalation_Trigger: Integrity concern, missing or duplicate files, or multiple users affected
END_SOP_GUARDRAIL_RECORD

SOP_ACTION_RECORD
SOP_ID: PRT-PD-SOP-BODYCAM
Client_ID: PRT-PD
Trigger: Body-camera upload issue
Required_Actions: Record dock, camera count, queue state, and time; check power, network link, other docks, and approved vendor status; preserve queued data
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: PRT-PD-SOP-BODYCAM
Client_ID: PRT-PD
Do_Not_Do: Do not delete footage, clear queues, factory-reset the dock, or repeatedly undock cameras without guidance
Escalation_Trigger: Integrity uncertainty, multiple docks affected, or queue does not resume
END_SOP_GUARDRAIL_RECORD

SOP_ACTION_RECORD
SOP_ID: PRT-PD-SOP-VPN
Client_ID: PRT-PD
Trigger: Police mobile VPN issue
Required_Actions: Verify identity; record exact error; confirm internet and device time; check password change, stale credentials, account status, and MFA
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: PRT-PD-SOP-VPN
Client_ID: PRT-PD
Do_Not_Do: Do not bypass MFA, use another user's account, or weaken VPN security
Escalation_Trigger: Repeated lockout, multiple officers affected, or suspicious authentication logs
END_SOP_GUARDRAIL_RECORD

SOP_ACTION_RECORD
SOP_ID: PRT-PD-SOP-PRINTER
Client_ID: PRT-PD
Trigger: Police printer queue issue
Required_Actions: Identify exact printer and queue; determine job sensitivity; confirm job ownership; check printer state; clear only authorized jobs; test safely
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: PRT-PD-SOP-PRINTER
Client_ID: PRT-PD
Do_Not_Do: Do not delete an unknown potentially sensitive job
Escalation_Trigger: Multiple users affected, hardware fault, or job ownership cannot be confirmed
END_SOP_GUARDRAIL_RECORD

SOP_ACTION_RECORD
SOP_ID: PRT-PD-SOP-SECURITY
Client_ID: PRT-PD
Trigger: Police security alert
Required_Actions: Tell the user not to approve unexpected prompts; verify identity; contain when authorized; preserve alert details; escalate promptly
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: PRT-PD-SOP-SECURITY
Client_ID: PRT-PD
Do_Not_Do: Do not disable MFA or expose sensitive sign-in details in broad communications
Escalation_Trigger: Any unexpected activity involving police, records, dispatch, leadership, or privileged accounts
END_SOP_GUARDRAIL_RECORD
