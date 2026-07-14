# Pine Ridge Township Police Client Resource RAG Index

Authoritative resource, application, peripheral, escalation, and environment-pattern records for the Police Department.

RESOURCE_RECORD
Client_ID: PRT-PD
Resource_Type: SERVICE
Resource_ID: PR-TW-FS01
Resource_Name: Township file server
Purpose: Hosts approved police shares
Troubleshooting_or_Safety_Rule: Shared server does not grant Borough access
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-PD
Resource_Type: SHARE
Resource_ID: \\PR-TW-FS01\PoliceRecords
Resource_Name: Police records share
Purpose: Authorized police records
Troubleshooting_or_Safety_Rule: Permission changes require approval
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-PD
Resource_Type: SHARE
Resource_ID: \\PR-TW-FS01\EvidenceIntake
Resource_Name: Evidence intake share
Purpose: Authorized evidence intake
Troubleshooting_or_Safety_Rule: Do not move, rename, delete, or alter evidence files
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-PD
Resource_Type: SERVICE
Resource_ID: Police Mobile VPN
Resource_Name: Mobile VPN
Purpose: Approved remote police access
Troubleshooting_or_Safety_Rule: Do not bypass MFA or weaken encryption
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-PD
Resource_Type: SERVICE
Resource_ID: PRT-PD-CAD
Resource_Name: CAD service
Purpose: Dispatch and call workflow
Troubleshooting_or_Safety_Rule: Multi-user outage is Critical
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-PD
Resource_Type: SERVICE
Resource_ID: PRT-PD-RMS
Resource_Name: RMS service
Purpose: Records management
Troubleshooting_or_Safety_Rule: Multi-user outage is High; dispatch impact can raise priority
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-PD
Resource_Type: SERVICE
Resource_ID: PRT-PD-BCS
Resource_Name: Body-camera service
Purpose: Upload and synchronization
Troubleshooting_or_Safety_Rule: Preserve queue and logs; do not delete footage
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-PD
Resource_Type: SERVICE
Resource_ID: Microsoft 365
Resource_Name: Shared township tenant
Purpose: Email and Teams
Troubleshooting_or_Safety_Rule: Police alerts receive elevated scrutiny
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-PD
Resource_Type: PERIPHERAL
Resource_ID: PRT-PD-MFP-01
Resource_Name: Records MFP
Purpose: Network MFP for Omar
Troubleshooting_or_Safety_Rule: Large scans may stall when workstation disk is saturated
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-PD
Resource_Type: PERIPHERAL
Resource_ID: PRT-PD-SCAN-01
Resource_Name: Records scanner
Purpose: USB scanner for Omar
Troubleshooting_or_Safety_Rule: Scan service may not start after Windows updates
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-PD
Resource_Type: PERIPHERAL
Resource_ID: PRT-PD-ECITE-01
Resource_Name: Patrol eCitation printer
Purpose: Bluetooth or USB printer for Emily
Troubleshooting_or_Safety_Rule: Pairing may drop after sleep or driver updates
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-PD
Resource_Type: PERIPHERAL
Resource_ID: PRT-PD-REPORT-01
Resource_Name: Sergeant report printer
Purpose: Network printer for Aaron
Troubleshooting_or_Safety_Rule: A stuck queue can block reports
END_RESOURCE_RECORD

RESOURCE_RECORD
Client_ID: PRT-PD
Resource_Type: PERIPHERAL
Resource_ID: PRT-PD-DISPATCH-01
Resource_Name: Dispatch printer
Purpose: Network printer for Nina
Troubleshooting_or_Safety_Rule: Do not clear unknown dispatch jobs without confirming purpose
END_RESOURCE_RECORD

APPLICATION_RECORD
Client_ID: PRT-PD
Application: CAD Console
Criticality: Critical
Immediate_Escalation_Condition: Dispatcher cannot process calls or multiple stations are affected
END_APPLICATION_RECORD

APPLICATION_RECORD
Client_ID: PRT-PD
Application: VoIP Console
Criticality: Critical
Immediate_Escalation_Condition: Dispatch cannot receive or place required calls
END_APPLICATION_RECORD

APPLICATION_RECORD
Client_ID: PRT-PD
Application: RMS Client
Criticality: High
Immediate_Escalation_Condition: Multiple users are affected or dispatch or records workflow is blocked
END_APPLICATION_RECORD

APPLICATION_RECORD
Client_ID: PRT-PD
Application: BodyCam Sync
Criticality: High
Immediate_Escalation_Condition: Multiple docks fail or data integrity is uncertain
END_APPLICATION_RECORD

APPLICATION_RECORD
Client_ID: PRT-PD
Application: Evidence Intake
Criticality: High
Immediate_Escalation_Condition: Files cannot be safely ingested or integrity is uncertain
END_APPLICATION_RECORD

APPLICATION_RECORD
Client_ID: PRT-PD
Application: eCitation
Criticality: Medium to High
Immediate_Escalation_Condition: Officer workflow is blocked and no approved fallback exists
END_APPLICATION_RECORD

APPLICATION_RECORD
Client_ID: PRT-PD
Application: Outlook and Teams
Criticality: Medium to High
Immediate_Escalation_Condition: Priority depends on user role and incident context
END_APPLICATION_RECORD

ESCALATION_RULE
Client_ID: PRT-PD
Condition: CAD or dispatch VoIP outage
Priority: Critical
Required_Action: Escalate immediately to senior support
END_ESCALATION_RULE

ESCALATION_RULE
Client_ID: PRT-PD
Condition: Multi-user RMS outage
Priority: High
Required_Action: Perform scope checks, then escalate to vendor or server support
END_ESCALATION_RULE

ESCALATION_RULE
Client_ID: PRT-PD
Condition: Evidence or body-camera integrity concern
Priority: High
Required_Action: Stop and escalate; do not delete or rename content
END_ESCALATION_RULE

ESCALATION_RULE
Client_ID: PRT-PD
Condition: Unexpected MFA prompt or suspicious sign-in
Priority: High
Required_Action: Treat as a security incident
END_ESCALATION_RULE

ESCALATION_RULE
Client_ID: PRT-PD
Condition: One office printer issue with workaround
Priority: Medium or Low
Required_Action: Use normal printer troubleshooting
END_ESCALATION_RULE

ESCALATION_RULE
Client_ID: PRT-PD
Condition: One-officer mobile VPN issue
Priority: High if field work is blocked; otherwise Medium
Required_Action: Verify identity, credentials, time, network, and MFA
END_ESCALATION_RULE

ESCALATION_RULE
Client_ID: PRT-PD
Condition: Permission request
Priority: Medium
Required_Action: Never grant broad access without documented approval
END_ESCALATION_RULE

ENVIRONMENT_PATTERN_RECORD
Client_ID: PRT-PD
Pattern_ID: PRT-PD-PATTERN-001
Pattern: One-station CAD freezing may be local; multi-station failures suggest server, network, or vendor scope.
Use_Rule: Use as a hypothesis-ranking clue, not proof of the current cause
END_ENVIRONMENT_PATTERN_RECORD

ENVIRONMENT_PATTERN_RECORD
Client_ID: PRT-PD
Pattern_ID: PRT-PD-PATTERN-002
Pattern: Omar Lewis's HDD-based workstation can cause scan and indexing delays.
Use_Rule: Use as a hypothesis-ranking clue, not proof of the current cause
END_ENVIRONMENT_PATTERN_RECORD

ENVIRONMENT_PATTERN_RECORD
Client_ID: PRT-PD
Pattern_ID: PRT-PD-PATTERN-003
Pattern: Emily Ross VPN failures often involve network type, device time, saved credentials, or sleep state.
Use_Rule: Use as a hypothesis-ranking clue, not proof of the current cause
END_ENVIRONMENT_PATTERN_RECORD

ENVIRONMENT_PATTERN_RECORD
Client_ID: PRT-PD
Pattern_ID: PRT-PD-PATTERN-004
Pattern: Body-camera upload troubleshooting must preserve queue and log information.
Use_Rule: Use as a hypothesis-ranking clue, not proof of the current cause
END_ENVIRONMENT_PATTERN_RECORD

ENVIRONMENT_PATTERN_RECORD
Client_ID: PRT-PD
Pattern_ID: PRT-PD-PATTERN-005
Pattern: Nina Patel's dispatch workstation hardware is adequate; investigate application or service issues before upgrades.
Use_Rule: Use as a hypothesis-ranking clue, not proof of the current cause
END_ENVIRONMENT_PATTERN_RECORD
