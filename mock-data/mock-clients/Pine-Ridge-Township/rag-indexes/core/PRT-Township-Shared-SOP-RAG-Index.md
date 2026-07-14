# Pine Ridge Township Shared SOP RAG Index

Shared atomic SOP records for both clients. Client-specific SOP files take precedence when they are more specific.

SOP_ACTION_RECORD
SOP_ID: PRT-SOP-STANDARD-TRIAGE
Applies_To: PRT-BOR; PRT-PD
Trigger: Any new support ticket
Required_Actions: Confirm client, user, assigned device, scope, application or service, exact error, issue category, and business impact; check the device record before hardware recommendations
END_SOP_ACTION_RECORD

SOP_OUTPUT_RECORD
SOP_ID: PRT-SOP-STANDARD-TRIAGE
Required_Output: Confirmed facts; missing information; business impact; likely causes; safe first steps; prohibited actions; escalation criteria; confidence; internal note; client update
Do_Not_Do: Do not invent credentials, IP addresses, permissions, server names, or resolution times
END_SOP_OUTPUT_RECORD

PRIORITY_RULE
SOP_ID: PRT-SOP-STANDARD-TRIAGE
Critical: Public-safety or site-wide outage with no acceptable workaround
High: Major department function blocked or active security concern
Medium: One user's important work blocked with limited workaround
Low: Minor issue or reasonable workaround exists
END_PRIORITY_RULE

SOP_ACTION_RECORD
SOP_ID: PRT-SOP-ACCOUNT-MFA
Applies_To: PRT-BOR; PRT-PD
Trigger: Account lockout, password issue, or unexpected MFA prompt
Required_Actions: Verify identity; confirm department and device; check account status, failed sign-ins, saved credentials, stale sessions, and whether prompts were expected
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: PRT-SOP-ACCOUNT-MFA
Unexpected_MFA_Action: Tell the user not to approve; reset credentials and revoke sessions when authorized; review sign-ins and mailbox rules; preserve timestamps; escalate
Do_Not_Do: Do not disable MFA, store passwords in tickets, or tell the user to approve a prompt
END_SOP_GUARDRAIL_RECORD

SOP_ACTION_RECORD
SOP_ID: PRT-SOP-PRINTER
Applies_To: PRT-BOR; PRT-PD
Trigger: Printing, scanning, label, receipt, or queue issue
Required_Actions: Identify exact device and scope; check power, display, media, connection, queue, correct default, test page, and approved remapping
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: PRT-SOP-PRINTER
Do_Not_Do: Do not factory-reset first, change static network settings without approval, or clear another user's sensitive job without confirming purpose
Escalation_Trigger: Repeated disconnect, hardware fault, or shared queue failure
END_SOP_GUARDRAIL_RECORD

SOP_ACTION_RECORD
SOP_ID: PRT-SOP-SHARED-DRIVE
Applies_To: PRT-BOR; PRT-PD
Trigger: Mapped drive, share, or access-denied issue
Required_Actions: Confirm exact path, scope, department, role, prior access, network, saved credentials, group membership, and approval
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: PRT-SOP-SHARED-DRIVE
Permission_Rule: Access is role-based and requires approval
Do_Not_Do: Do not add privileged groups to test, grant cross-department access, or modify files to test permissions
END_SOP_GUARDRAIL_RECORD

SOP_ACTION_RECORD
SOP_ID: PRT-SOP-SECURITY-ALERT
Applies_To: PRT-BOR; PRT-PD
Trigger: Suspicious login, impossible travel, MFA fatigue, forwarding rule, OAuth consent, or risky sign-in
Required_Actions: Identify user and department; record time and source; confirm activity; contain when authorized; preserve details; escalate suspected compromise
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: PRT-SOP-SECURITY-ALERT
Police_Rule: Police, records, dispatch, and privileged accounts require elevated scrutiny and prompt escalation
Do_Not_Do: Do not dismiss by location, claim compromise without evidence, disable MFA, delete logs, or expose sensitive details broadly
END_SOP_GUARDRAIL_RECORD
