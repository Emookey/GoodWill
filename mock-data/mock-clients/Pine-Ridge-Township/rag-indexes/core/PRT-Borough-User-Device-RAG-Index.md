# Pine Ridge Township Borough User-Device RAG Index

Core authoritative device records. Each device is split into assignment, hardware, and support records so every block remains self-contained and retrieval-friendly.

DEVICE_ASSIGNMENT_RECORD
Record_ID: PRT_BOR_WS_001_ASSIGNMENT
Authority: Authoritative for user assignment, role, criticality, and downtime
Client_ID: PRT-BOR
Device_ID: PRT-BOR-WS-001
Assigned_User: Alice Mercer
User_ID: PRT-BOR-USER-001
Role: Borough Manager
Operational_Criticality: Medium
Allowed_Downtime: 4 hours
END_DEVICE_ASSIGNMENT_RECORD

DEVICE_HARDWARE_RECORD
Record_ID: PRT_BOR_WS_001_HARDWARE
Authority: Authoritative for device specifications and upgrade risk
Device_ID: PRT-BOR-WS-001
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
Record_ID: PRT_BOR_WS_001_APPLICATIONS
Authority: Authoritative for applications commonly used on this device
Device_ID: PRT-BOR-WS-001
Assigned_User: Alice Mercer
Common_Apps: Outlook; Teams; Word; Adobe Acrobat; MunicipalERP
END_DEVICE_APPLICATION_RECORD

DEVICE_KNOWN_ISSUE_RECORD
Record_ID: PRT_BOR_WS_001_KNOWN_ISSUES
Authority: Authoritative for known recurring symptoms on this device
Device_ID: PRT-BOR-WS-001
Assigned_User: Alice Mercer
Known_Issues: Outlook credential prompts; Teams camera selection; PDF signing confusion
END_DEVICE_KNOWN_ISSUE_RECORD

DEVICE_DIRECT_HINT_RECORD
Record_ID: PRT_BOR_WS_001_DIRECT_HINT
Authority: Authoritative direct troubleshooting guidance for this device
Device_ID: PRT-BOR-WS-001
Assigned_User: Alice Mercer
Direct_Troubleshooting_Hint: Hardware bottleneck is unlikely. Check Microsoft 365 authentication, Teams device settings, and Acrobat configuration before recommending upgrades.
END_DEVICE_DIRECT_HINT_RECORD

DEVICE_ASSIGNMENT_RECORD
Record_ID: PRT_BOR_WS_002_ASSIGNMENT
Authority: Authoritative for user assignment, role, criticality, and downtime
Client_ID: PRT-BOR
Device_ID: PRT-BOR-WS-002
Assigned_User: Daniel Ortiz
User_ID: PRT-BOR-USER-002
Role: Finance Clerk
Operational_Criticality: High
Allowed_Downtime: 2 hours
END_DEVICE_ASSIGNMENT_RECORD

DEVICE_HARDWARE_RECORD
Record_ID: PRT_BOR_WS_002_HARDWARE
Authority: Authoritative for device specifications and upgrade risk
Device_ID: PRT-BOR-WS-002
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
Record_ID: PRT_BOR_WS_002_APPLICATIONS
Authority: Authoritative for applications commonly used on this device
Device_ID: PRT-BOR-WS-002
Assigned_User: Daniel Ortiz
Common_Apps: Outlook; Excel; MunicipalERP Finance; CheckScan Utility
END_DEVICE_APPLICATION_RECORD

DEVICE_KNOWN_ISSUE_RECORD
Record_ID: PRT_BOR_WS_002_KNOWN_ISSUES
Authority: Authoritative for known recurring symptoms on this device
Device_ID: PRT-BOR-WS-002
Assigned_User: Daniel Ortiz
Known_Issues: Slow login; long report generation; scanner delays; disk usage often high
END_DEVICE_KNOWN_ISSUE_RECORD

DEVICE_DIRECT_HINT_RECORD
Record_ID: PRT_BOR_WS_002_DIRECT_HINT
Authority: Authoritative direct troubleshooting guidance for this device
Device_ID: PRT-BOR-WS-002
Assigned_User: Daniel Ortiz
Direct_Troubleshooting_Hint: Strong upgrade candidate. Check disk health, free space, startup load, RAM pressure, finance application path, and scanner service.
END_DEVICE_DIRECT_HINT_RECORD

DEVICE_ASSIGNMENT_RECORD
Record_ID: PRT_BOR_WS_003_ASSIGNMENT
Authority: Authoritative for user assignment, role, criticality, and downtime
Client_ID: PRT-BOR
Device_ID: PRT-BOR-WS-003
Assigned_User: Grace Kim
User_ID: PRT-BOR-USER-003
Role: Tax Collector
Operational_Criticality: High
Allowed_Downtime: 2 hours
END_DEVICE_ASSIGNMENT_RECORD

DEVICE_HARDWARE_RECORD
Record_ID: PRT_BOR_WS_003_HARDWARE
Authority: Authoritative for device specifications and upgrade risk
Device_ID: PRT-BOR-WS-003
OS: Windows 11 Pro
RAM_GB: 16
Storage: 256GB SSD
Storage_Type: SSD
Below_16GB_RAM: No
Uses_HDD: No
Under_Spec_Device: No
Performance_Risk: Low
Upgrade_Priority: Normal
END_DEVICE_HARDWARE_RECORD

DEVICE_APPLICATION_RECORD
Record_ID: PRT_BOR_WS_003_APPLICATIONS
Authority: Authoritative for applications commonly used on this device
Device_ID: PRT-BOR-WS-003
Assigned_User: Grace Kim
Common_Apps: Outlook; Excel; TaxSuite; Adobe Acrobat; Receipt Printer Utility
END_DEVICE_APPLICATION_RECORD

DEVICE_KNOWN_ISSUE_RECORD
Record_ID: PRT_BOR_WS_003_KNOWN_ISSUES
Authority: Authoritative for known recurring symptoms on this device
Device_ID: PRT-BOR-WS-003
Assigned_User: Grace Kim
Known_Issues: Tax share may disconnect after password changes; receipt printer may select the wrong tray
END_DEVICE_KNOWN_ISSUE_RECORD

DEVICE_DIRECT_HINT_RECORD
Record_ID: PRT_BOR_WS_003_DIRECT_HINT
Authority: Authoritative direct troubleshooting guidance for this device
Device_ID: PRT-BOR-WS-003
Assigned_User: Grace Kim
Direct_Troubleshooting_Hint: Focus on saved credentials, mapped-drive authentication, and printer preferences. Do not assume SSD or RAM is the cause.
END_DEVICE_DIRECT_HINT_RECORD

DEVICE_ASSIGNMENT_RECORD
Record_ID: PRT_BOR_LT_004_ASSIGNMENT
Authority: Authoritative for user assignment, role, criticality, and downtime
Client_ID: PRT-BOR
Device_ID: PRT-BOR-LT-004
Assigned_User: Robert Hayes
User_ID: PRT-BOR-USER-004
Role: Code Enforcement Officer
Operational_Criticality: Medium
Allowed_Downtime: 4 hours
END_DEVICE_ASSIGNMENT_RECORD

DEVICE_HARDWARE_RECORD
Record_ID: PRT_BOR_LT_004_HARDWARE
Authority: Authoritative for device specifications and upgrade risk
Device_ID: PRT-BOR-LT-004
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
Record_ID: PRT_BOR_LT_004_APPLICATIONS
Authority: Authoritative for applications commonly used on this device
Device_ID: PRT-BOR-LT-004
Assigned_User: Robert Hayes
Common_Apps: Outlook; Teams; GIS Viewer; VPN Client; Camera Upload Utility
END_DEVICE_APPLICATION_RECORD

DEVICE_KNOWN_ISSUE_RECORD
Record_ID: PRT_BOR_LT_004_KNOWN_ISSUES
Authority: Authoritative for known recurring symptoms on this device
Device_ID: PRT-BOR-LT-004
Assigned_User: Robert Hayes
Known_Issues: VPN may fail after sleep; camera sync may stall; limited RAM during GIS use
END_DEVICE_KNOWN_ISSUE_RECORD

DEVICE_DIRECT_HINT_RECORD
Record_ID: PRT_BOR_LT_004_DIRECT_HINT
Authority: Authoritative direct troubleshooting guidance for this device
Device_ID: PRT-BOR-LT-004
Assigned_User: Robert Hayes
Direct_Troubleshooting_Hint: Check VPN adapter, device time, saved credentials, sleep state, and GIS memory use. Storage is SSD; do not identify HDD slowness.
END_DEVICE_DIRECT_HINT_RECORD

DEVICE_ASSIGNMENT_RECORD
Record_ID: PRT_BOR_WS_005_ASSIGNMENT
Authority: Authoritative for user assignment, role, criticality, and downtime
Client_ID: PRT-BOR
Device_ID: PRT-BOR-WS-005
Assigned_User: Jenna Price
User_ID: PRT-BOR-USER-005
Role: Front Desk and Permits Clerk
Operational_Criticality: High
Allowed_Downtime: 1 hour
END_DEVICE_ASSIGNMENT_RECORD

DEVICE_HARDWARE_RECORD
Record_ID: PRT_BOR_WS_005_HARDWARE
Authority: Authoritative for device specifications and upgrade risk
Device_ID: PRT-BOR-WS-005
OS: Windows 10 Pro
RAM_GB: 4
Storage: 500GB HDD
Storage_Type: HDD
Below_16GB_RAM: Yes
Uses_HDD: Yes
Under_Spec_Device: Yes
Performance_Risk: Critical
Upgrade_Priority: High
END_DEVICE_HARDWARE_RECORD

DEVICE_APPLICATION_RECORD
Record_ID: PRT_BOR_WS_005_APPLICATIONS
Authority: Authoritative for applications commonly used on this device
Device_ID: PRT-BOR-WS-005
Assigned_User: Jenna Price
Common_Apps: Outlook; Chrome; PermitTrack; Label Printer Utility; Receipt Printer Utility
END_DEVICE_APPLICATION_RECORD

DEVICE_KNOWN_ISSUE_RECORD
Record_ID: PRT_BOR_WS_005_KNOWN_ISSUES
Authority: Authoritative for known recurring symptoms on this device
Device_ID: PRT-BOR-WS-005
Assigned_User: Jenna Price
Known_Issues: Very slow startup; browser freezes; label printer disconnects; updates remain pending
END_DEVICE_KNOWN_ISSUE_RECORD

DEVICE_DIRECT_HINT_RECORD
Record_ID: PRT_BOR_WS_005_DIRECT_HINT
Authority: Authoritative direct troubleshooting guidance for this device
Device_ID: PRT-BOR-WS-005
Assigned_User: Jenna Price
Direct_Troubleshooting_Hint: Highest hardware-upgrade priority. Check RAM pressure, HDD health, free space, startup apps, updates, printer USB power management, and consider replacement.
END_DEVICE_DIRECT_HINT_RECORD
