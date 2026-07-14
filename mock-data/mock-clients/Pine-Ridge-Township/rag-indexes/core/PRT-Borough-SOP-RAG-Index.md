# Pine Ridge Township Borough SOP RAG Index

Borough-specific atomic SOP records. These override shared SOPs when the issue matches a more specific Borough workflow.

SOP_ACTION_RECORD
SOP_ID: PRT-BOR-SOP-FINANCE-SLOW
Client_ID: PRT-BOR
Trigger: Finance application slowness
Required_Actions: Confirm scope; check Daniel's device record; record CPU, RAM, disk activity, free space, disk health; confirm application path and network; test a small report
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: PRT-BOR-SOP-FINANCE-SLOW
Client_ID: PRT-BOR
Do_Not_Do: Do not delete finance data, move the database, run repairs without approval, or assume every delay is caused by the HDD
Escalation_Trigger: Multiple users affected, disk health warning, or finance deadline blocked
END_SOP_GUARDRAIL_RECORD

SOP_ACTION_RECORD
SOP_ID: PRT-BOR-SOP-SHARE-ACCESS
Client_ID: PRT-BOR
Trigger: Tax or Finance share access
Required_Actions: Confirm exact path and prior approved access; check password-change timing, stale credentials, network, and group membership
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: PRT-BOR-SOP-SHARE-ACCESS
Client_ID: PRT-BOR
Do_Not_Do: Do not grant new access without written approval
Escalation_Trigger: Group membership appears wrong, approval is missing, or multiple users are affected
END_SOP_GUARDRAIL_RECORD

SOP_ACTION_RECORD
SOP_ID: PRT-BOR-SOP-PERMIT-PRINT
Client_ID: PRT-BOR
Trigger: Permit label or receipt printer issue
Required_Actions: Identify label versus receipt printer; check power, connection, exact queue, USB power management, and an approved test print
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: PRT-BOR-SOP-PERMIT-PRINT
Client_ID: PRT-BOR
Do_Not_Do: Do not confuse workstation slowness with a missing USB printer without evidence
Escalation_Trigger: Repeated hardware disconnect or failed self-test
END_SOP_GUARDRAIL_RECORD

SOP_ACTION_RECORD
SOP_ID: PRT-BOR-SOP-VPN
Client_ID: PRT-BOR
Trigger: Code Enforcement VPN issue
Required_Actions: Confirm internet; record exact error; verify device time; restart approved client and adapter; check sleep or resume; reboot if safe
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: PRT-BOR-SOP-VPN
Client_ID: PRT-BOR
Do_Not_Do: Do not bypass approved VPN controls
Escalation_Trigger: Repeated authentication failure, multiple users affected, or site VPN outage
END_SOP_GUARDRAIL_RECORD

SOP_ACTION_RECORD
SOP_ID: PRT-BOR-SOP-SECURITY
Client_ID: PRT-BOR
Trigger: Borough security event
Required_Actions: Follow PRT-SOP-SECURITY-ALERT for unexpected MFA prompts, forwarding rules, or suspicious logins
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: PRT-BOR-SOP-SECURITY
Client_ID: PRT-BOR
Do_Not_Do: Do not disable MFA or delay escalation because a prompt was denied
Escalation_Trigger: Any suspected unauthorized access
END_SOP_GUARDRAIL_RECORD
