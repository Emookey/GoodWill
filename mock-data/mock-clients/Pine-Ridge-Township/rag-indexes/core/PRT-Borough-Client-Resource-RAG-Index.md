# Pine Ridge Township Borough Client Resource RAG Index

Authoritative resource, application, peripheral, escalation, and environment-pattern records for the Borough Building.

RESOURCE_RECORD
Client_ID: PRT-BOR
Resource_Type: SERVICE
Resource_ID: PR-TW-FS01
Resource_Name: Township file server
Purpose: Hosts approved Borough shares
Troubleshooting_or_Safety_Rule: Verify network, path, saved credentials, and group membership
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-BOR
Resource_Type: SHARE
Resource_ID: \\PR-TW-FS01\Borough
Resource_Name: Borough shared drive
Purpose: General municipal documents
Troubleshooting_or_Safety_Rule: Role-based access; Police access is not assumed
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-BOR
Resource_Type: SHARE
Resource_ID: \\PR-TW-FS01\Finance
Resource_Name: Finance share
Purpose: Finance reports and exports
Troubleshooting_or_Safety_Rule: Finance staff only; changes require approval
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-BOR
Resource_Type: SHARE
Resource_ID: \\PR-TW-FS01\Tax
Resource_Name: Tax share
Purpose: Tax documents and exports
Troubleshooting_or_Safety_Rule: Tax staff and approved management only
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-BOR
Resource_Type: SERVICE
Resource_ID: Township VPN
Resource_Name: Remote access
Purpose: Code enforcement remote access
Troubleshooting_or_Safety_Rule: Check device time, internet, saved credentials, adapter, and sleep state
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-BOR
Resource_Type: SERVICE
Resource_ID: Microsoft 365
Resource_Name: Shared township tenant
Purpose: Email, Teams, and Office apps
Troubleshooting_or_Safety_Rule: Password changes can leave stale sessions
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-BOR
Resource_Type: PERIPHERAL
Resource_ID: PRT-BOR-MFP-01
Resource_Name: Main-office MFP
Purpose: Network printer for Alice, Grace, and Jenna
Troubleshooting_or_Safety_Rule: Users may select an old queue
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-BOR
Resource_Type: PERIPHERAL
Resource_ID: PRT-BOR-CHECKSCAN-01
Resource_Name: Finance check scanner
Purpose: USB scanner for Daniel
Troubleshooting_or_Safety_Rule: Scan service may not start after reboot
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-BOR
Resource_Type: PERIPHERAL
Resource_ID: PRT-BOR-RECEIPT-01
Resource_Name: Tax receipt printer
Purpose: USB receipt printer for Grace
Troubleshooting_or_Safety_Rule: Wrong tray or paper size can block jobs
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-BOR
Resource_Type: PERIPHERAL
Resource_ID: PRT-BOR-LABEL-01
Resource_Name: Permit label printer
Purpose: USB label printer for Jenna
Troubleshooting_or_Safety_Rule: USB power management can cause disconnects
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-BOR
Resource_Type: PERIPHERAL
Resource_ID: PRT-BOR-MFP-02
Resource_Name: Manager-office MFP
Purpose: Network MFP for Alice
Troubleshooting_or_Safety_Rule: Scan-to-email may require reauthentication
END_RESOURCE_RECORD

APPLICATION_RECORD
Client_ID: PRT-BOR
Application: MunicipalERP Finance
Users: Daniel Ortiz; Alice Mercer
Criticality: High
Known_Pattern: Slowness is worse on Daniel's HDD-based workstation
END_APPLICATION_RECORD

APPLICATION_RECORD
Client_ID: PRT-BOR
Application: TaxSuite
Users: Grace Kim
Criticality: High
Known_Pattern: Share access may fail after password changes
END_APPLICATION_RECORD

APPLICATION_RECORD
Client_ID: PRT-BOR
Application: PermitTrack
Users: Jenna Price
Criticality: High
Known_Pattern: Workstation slowness and label-printer issues can block permits
END_APPLICATION_RECORD

APPLICATION_RECORD
Client_ID: PRT-BOR
Application: GIS Viewer
Users: Robert Hayes
Criticality: Medium
Known_Pattern: Uses significant RAM; VPN stability affects remote use
END_APPLICATION_RECORD

APPLICATION_RECORD
Client_ID: PRT-BOR
Application: Microsoft 365
Users: All Borough users
Criticality: Medium to High
Known_Pattern: Credential prompts often follow password changes
END_APPLICATION_RECORD

APPLICATION_RECORD
Client_ID: PRT-BOR
Application: Adobe Acrobat
Users: Alice Mercer; Grace Kim
Criticality: Medium
Known_Pattern: Signing and default-app confusion are common
END_APPLICATION_RECORD

ESCALATION_RULE
Client_ID: PRT-BOR
Condition: Finance or tax application unavailable to multiple users
Priority: High
Required_Action: Perform basic connectivity checks, then escalate to senior technician or application vendor
END_ESCALATION_RULE

ESCALATION_RULE
Client_ID: PRT-BOR
Condition: Front desk cannot issue permits or receipts
Priority: High
Required_Action: Establish a safe workaround and escalate if not restored quickly
END_ESCALATION_RULE

ESCALATION_RULE
Client_ID: PRT-BOR
Condition: Suspected account compromise
Priority: High
Required_Action: Follow the security-alert SOP immediately
END_ESCALATION_RULE

ESCALATION_RULE
Client_ID: PRT-BOR
Condition: One printer queue is misselected
Priority: Low
Required_Action: Correct the queue and document the change
END_ESCALATION_RULE

ESCALATION_RULE
Client_ID: PRT-BOR
Condition: Disk failure indicators are present
Priority: High
Required_Action: Stop write-heavy testing, protect approved data, and escalate hardware replacement
END_ESCALATION_RULE

ESCALATION_RULE
Client_ID: PRT-BOR
Condition: Permission request lacks management approval
Priority: Medium
Required_Action: Do not grant access; request written approval
END_ESCALATION_RULE

ENVIRONMENT_PATTERN_RECORD
Client_ID: PRT-BOR
Pattern_ID: PRT-BOR-PATTERN-001
Pattern: Password changes can leave stale Outlook, VPN, and mapped-drive credentials.
Use_Rule: Use as a hypothesis-ranking clue, not proof of the current cause
END_ENVIRONMENT_PATTERN_RECORD

ENVIRONMENT_PATTERN_RECORD
Client_ID: PRT-BOR
Pattern_ID: PRT-BOR-PATTERN-002
Pattern: Daniel Ortiz and Jenna Price use HDD-based systems that are legitimate performance risks.
Use_Rule: Use as a hypothesis-ranking clue, not proof of the current cause
END_ENVIRONMENT_PATTERN_RECORD

ENVIRONMENT_PATTERN_RECORD
Client_ID: PRT-BOR
Pattern_ID: PRT-BOR-PATTERN-003
Pattern: Robert Hayes has 8GB RAM but SSD storage; do not blame HDD latency.
Use_Rule: Use as a hypothesis-ranking clue, not proof of the current cause
END_ENVIRONMENT_PATTERN_RECORD

ENVIRONMENT_PATTERN_RECORD
Client_ID: PRT-BOR
Pattern_ID: PRT-BOR-PATTERN-004
Pattern: Grace Kim share failures are usually authentication or permissions issues, not hardware.
Use_Rule: Use as a hypothesis-ranking clue, not proof of the current cause
END_ENVIRONMENT_PATTERN_RECORD

ENVIRONMENT_PATTERN_RECORD
Client_ID: PRT-BOR
Pattern_ID: PRT-BOR-PATTERN-005
Pattern: Old printer queues can remain visible after printer replacement.
Use_Rule: Use as a hypothesis-ranking clue, not proof of the current cause
END_ENVIRONMENT_PATTERN_RECORD
