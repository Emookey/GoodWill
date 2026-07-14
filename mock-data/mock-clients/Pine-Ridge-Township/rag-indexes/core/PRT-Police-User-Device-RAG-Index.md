# Pine Ridge Township Police User-Device RAG Index

Core authoritative device records. Each device is split into assignment, hardware, and support records so every block remains self-contained and retrieval-friendly.

DEVICE_ASSIGNMENT_RECORD
Record_ID: PRT_PD_LT_001_ASSIGNMENT
Authority: Authoritative for user assignment, role, criticality, and downtime
Client_ID: PRT-PD
Device_ID: PRT-PD-LT-001
Assigned_User: Melissa Grant
User_ID: PRT-PD-USER-001
Role: Police Chief
Operational_Criticality: High
Allowed_Downtime: 2 hours
END_DEVICE_ASSIGNMENT_RECORD

DEVICE_HARDWARE_RECORD
Record_ID: PRT_PD_LT_001_HARDWARE
Authority: Authoritative for device specifications and upgrade risk
Device_ID: PRT-PD-LT-001
OS: Windows 11 Pro
RAM_GB: 16
Storage: 512GB SSD
Storage_Type: SSD
Below_16GB_RAM: No
Uses_HDD: No
Under_Spec_Device: No
Performance_Risk: Low
Upgrade_Priority: Low
END_DEVICE_HARDWARE_RECORD

DEVICE_APPLICATION_RECORD
Record_ID: PRT_PD_LT_001_APPLICATIONS
Authority: Authoritative for applications commonly used on this device
Device_ID: PRT-PD-LT-001
Assigned_User: Melissa Grant
Common_Apps: Outlook; Teams; RMS Portal; VPN Client; Adobe Acrobat
END_DEVICE_APPLICATION_RECORD

DEVICE_KNOWN_ISSUE_RECORD
Record_ID: PRT_PD_LT_001_KNOWN_ISSUES
Authority: Authoritative for known recurring symptoms on this device
Device_ID: PRT-PD-LT-001
Assigned_User: Melissa Grant
Known_Issues: VPN prompts after password changes; dock audio confusion
END_DEVICE_KNOWN_ISSUE_RECORD

DEVICE_DIRECT_HINT_RECORD
Record_ID: PRT_PD_LT_001_DIRECT_HINT
Authority: Authoritative direct troubleshooting guidance for this device
Device_ID: PRT-PD-LT-001
Assigned_User: Melissa Grant
Direct_Troubleshooting_Hint: Hardware is adequate. Focus on authentication, VPN, dock, and application access.
END_DEVICE_DIRECT_HINT_RECORD

DEVICE_ASSIGNMENT_RECORD
Record_ID: PRT_PD_WS_002_ASSIGNMENT
Authority: Authoritative for user assignment, role, criticality, and downtime
Client_ID: PRT-PD
Device_ID: PRT-PD-WS-002
Assigned_User: Aaron Blake
User_ID: PRT-PD-USER-002
Role: Patrol Sergeant
Operational_Criticality: High
Allowed_Downtime: 1 hour
END_DEVICE_ASSIGNMENT_RECORD

DEVICE_HARDWARE_RECORD
Record_ID: PRT_PD_WS_002_HARDWARE
Authority: Authoritative for device specifications and upgrade risk
Device_ID: PRT-PD-WS-002
OS: Windows 11 Pro
RAM_GB: 16
Storage: 512GB SSD
Storage_Type: SSD
Below_16GB_RAM: No
Uses_HDD: No
Under_Spec_Device: No
Performance_Risk: Low
Upgrade_Priority: Normal
END_DEVICE_HARDWARE_RECORD

DEVICE_APPLICATION_RECORD
Record_ID: PRT_PD_WS_002_APPLICATIONS
Authority: Authoritative for applications commonly used on this device
Device_ID: PRT-PD-WS-002
Assigned_User: Aaron Blake
Common_Apps: CAD Viewer; RMS Client; BodyCam Sync; Outlook; Chrome
END_DEVICE_APPLICATION_RECORD

DEVICE_KNOWN_ISSUE_RECORD
Record_ID: PRT_PD_WS_002_KNOWN_ISSUES
Authority: Authoritative for known recurring symptoms on this device
Device_ID: PRT-PD-WS-002
Assigned_User: Aaron Blake
Known_Issues: Body-camera upload queue may stall; CAD viewer may need service restart
END_DEVICE_KNOWN_ISSUE_RECORD

DEVICE_DIRECT_HINT_RECORD
Record_ID: PRT_PD_WS_002_DIRECT_HINT
Authority: Authoritative direct troubleshooting guidance for this device
Device_ID: PRT-PD-WS-002
Assigned_User: Aaron Blake
Direct_Troubleshooting_Hint: Do not recommend hardware first. Check application service, dock connectivity, queue, network, and vendor status.
END_DEVICE_DIRECT_HINT_RECORD

DEVICE_ASSIGNMENT_RECORD
Record_ID: PRT_PD_WS_003_ASSIGNMENT
Authority: Authoritative for user assignment, role, criticality, and downtime
Client_ID: PRT-PD
Device_ID: PRT-PD-WS-003
Assigned_User: Nina Patel
User_ID: PRT-PD-USER-003
Role: Dispatcher
Operational_Criticality: Critical
Allowed_Downtime: 15 minutes
END_DEVICE_ASSIGNMENT_RECORD

DEVICE_HARDWARE_RECORD
Record_ID: PRT_PD_WS_003_HARDWARE
Authority: Authoritative for device specifications and upgrade risk
Device_ID: PRT-PD-WS-003
OS: Windows 11 Pro
RAM_GB: 32
Storage: 1TB SSD
Storage_Type: SSD
Below_16GB_RAM: No
Uses_HDD: No
Under_Spec_Device: No
Performance_Risk: Low
Upgrade_Priority: Low
END_DEVICE_HARDWARE_RECORD

DEVICE_APPLICATION_RECORD
Record_ID: PRT_PD_WS_003_APPLICATIONS
Authority: Authoritative for applications commonly used on this device
Device_ID: PRT-PD-WS-003
Assigned_User: Nina Patel
Common_Apps: CAD Console; Dispatch Mapping; VoIP Console; RMS Query; Outlook
END_DEVICE_APPLICATION_RECORD

DEVICE_KNOWN_ISSUE_RECORD
Record_ID: PRT_PD_WS_003_KNOWN_ISSUES
Authority: Authoritative for known recurring symptoms on this device
Device_ID: PRT-PD-WS-003
Assigned_User: Nina Patel
Known_Issues: CAD window can freeze after long uptime; audio device selection may change
END_DEVICE_KNOWN_ISSUE_RECORD

DEVICE_DIRECT_HINT_RECORD
Record_ID: PRT_PD_WS_003_DIRECT_HINT
Authority: Authoritative direct troubleshooting guidance for this device
Device_ID: PRT-PD-WS-003
Assigned_User: Nina Patel
Direct_Troubleshooting_Hint: This workstation is powerful but operationally critical. Treat CAD or dispatch outages as Critical even though hardware risk is Low.
END_DEVICE_DIRECT_HINT_RECORD

DEVICE_ASSIGNMENT_RECORD
Record_ID: PRT_PD_WS_004_ASSIGNMENT
Authority: Authoritative for user assignment, role, criticality, and downtime
Client_ID: PRT-PD
Device_ID: PRT-PD-WS-004
Assigned_User: Omar Lewis
User_ID: PRT-PD-USER-004
Role: Records Clerk
Operational_Criticality: High
Allowed_Downtime: 1 hour
END_DEVICE_ASSIGNMENT_RECORD

DEVICE_HARDWARE_RECORD
Record_ID: PRT_PD_WS_004_HARDWARE
Authority: Authoritative for device specifications and upgrade risk
Device_ID: PRT-PD-WS-004
OS: Windows 10 Pro
RAM_GB: 8
Storage: 1TB HDD
Storage_Type: HDD
Below_16GB_RAM: Yes
Uses_HDD: Yes
Under_Spec_Device: Yes
Performance_Risk: High
Upgrade_Priority: High
END_DEVICE_HARDWARE_RECORD

DEVICE_APPLICATION_RECORD
Record_ID: PRT_PD_WS_004_APPLICATIONS
Authority: Authoritative for applications commonly used on this device
Device_ID: PRT-PD-WS-004
Assigned_User: Omar Lewis
Common_Apps: RMS Client; Evidence Intake; Scan Utility; Outlook; Excel
END_DEVICE_APPLICATION_RECORD

DEVICE_KNOWN_ISSUE_RECORD
Record_ID: PRT_PD_WS_004_KNOWN_ISSUES
Authority: Authoritative for known recurring symptoms on this device
Device_ID: PRT-PD-WS-004
Assigned_User: Omar Lewis
Known_Issues: Slow indexing; scanner delays; high disk utilization; large PDF handling
END_DEVICE_KNOWN_ISSUE_RECORD

DEVICE_DIRECT_HINT_RECORD
Record_ID: PRT_PD_WS_004_DIRECT_HINT
Authority: Authoritative direct troubleshooting guidance for this device
Device_ID: PRT-PD-WS-004
Assigned_User: Omar Lewis
Direct_Troubleshooting_Hint: Strong upgrade candidate. Check disk health, free space, RAM pressure, scanner service, and evidence-share connectivity.
END_DEVICE_DIRECT_HINT_RECORD

DEVICE_ASSIGNMENT_RECORD
Record_ID: PRT_PD_LT_005_ASSIGNMENT
Authority: Authoritative for user assignment, role, criticality, and downtime
Client_ID: PRT-PD
Device_ID: PRT-PD-LT-005
Assigned_User: Emily Ross
User_ID: PRT-PD-USER-005
Role: Patrol Officer
Operational_Criticality: High
Allowed_Downtime: 1 hour
END_DEVICE_ASSIGNMENT_RECORD

DEVICE_HARDWARE_RECORD
Record_ID: PRT_PD_LT_005_HARDWARE
Authority: Authoritative for device specifications and upgrade risk
Device_ID: PRT-PD-LT-005
OS: Windows 11 Pro
RAM_GB: 8
Storage: 256GB SSD
Storage_Type: SSD
Below_16GB_RAM: Yes
Uses_HDD: No
Under_Spec_Device: Partial
Performance_Risk: Medium
Upgrade_Priority: Medium
END_DEVICE_HARDWARE_RECORD

DEVICE_APPLICATION_RECORD
Record_ID: PRT_PD_LT_005_APPLICATIONS
Authority: Authoritative for applications commonly used on this device
Device_ID: PRT-PD-LT-005
Assigned_User: Emily Ross
Common_Apps: Mobile VPN; eCitation; RMS Mobile; BodyCam Client; Outlook
END_DEVICE_APPLICATION_RECORD

DEVICE_KNOWN_ISSUE_RECORD
Record_ID: PRT_PD_LT_005_KNOWN_ISSUES
Authority: Authoritative for known recurring symptoms on this device
Device_ID: PRT-PD-LT-005
Assigned_User: Emily Ross
Known_Issues: VPN may fail on public networks; eCitation printer pairing may drop; limited RAM
END_DEVICE_KNOWN_ISSUE_RECORD

DEVICE_DIRECT_HINT_RECORD
Record_ID: PRT_PD_LT_005_DIRECT_HINT
Authority: Authoritative direct troubleshooting guidance for this device
Device_ID: PRT-PD-LT-005
Assigned_User: Emily Ross
Direct_Troubleshooting_Hint: Storage is SSD. Focus on VPN/network, Bluetooth or USB printer pairing, and 8GB RAM only when multitasking symptoms support it.
END_DEVICE_DIRECT_HINT_RECORD
