# ACME Dental User-Device RAG Index

The authoritative ACME user and device inventory. Each record is atomic and repeats the exact user or device identifier so Odysseus can retrieve it without reconstructing wide tables.

USER_ASSIGNMENT_RECORD
Record_ID: ACME_WS_001_USER
Client_ID: ACME-DENTAL
User: Jordan Reed
User_ID: ACME-USER-001
Email: jordan.reed@acme-dental.test
Role: Front Desk / Scheduling
Primary_Device: ACME-WS-001
END_USER_ASSIGNMENT_RECORD

USER_RESOURCE_RECORD
Record_ID: ACME_WS_001_RESOURCES
Client_ID: ACME-DENTAL
User: Jordan Reed
User_ID: ACME-USER-001
Primary_Device: ACME-WS-001
Shared_Resources: Front Desk shared mailbox; Scheduling calendar; Main office printer
END_USER_RESOURCE_RECORD

DEVICE_HARDWARE_RECORD
Record_ID: ACME_WS_001_HARDWARE
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-001
OS: Windows 11 Pro
CPU: Intel Core i5-10500
RAM_GB: 16
Storage: 256GB SSD
Storage_Type: SSD
END_DEVICE_HARDWARE_RECORD

DEVICE_RISK_RECORD
Record_ID: ACME_WS_001_RISK
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-001
Assigned_User: Jordan Reed
Below_16GB_RAM: No
Uses_HDD: No
Under_Spec_Device: No
Performance_Risk: Low
Upgrade_Priority: Normal
END_DEVICE_RISK_RECORD

DEVICE_PLATFORM_RECORD
Record_ID: ACME_WS_001_PLATFORM
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-001
Device_Type: Desktop
Manufacturer: Dell
Model: OptiPlex 5090
Domain_Joined: Yes
Network_Connection: Ethernet
VLAN: Workstations
END_DEVICE_PLATFORM_RECORD

DEVICE_APPLICATION_RECORD
Record_ID: ACME_WS_001_APPLICATIONS
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-001
Assigned_User: Jordan Reed
Common_Apps: Microsoft 365 Apps; Outlook; Chrome; Dentrix; Adobe Reader
END_DEVICE_APPLICATION_RECORD

DEVICE_KNOWN_ISSUE_RECORD
Record_ID: ACME_WS_001_KNOWN_ISSUES
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-001
Assigned_User: Jordan Reed
Known_Issues: Outlook password prompts; printer selection confusion; dental insurance portal errors
END_DEVICE_KNOWN_ISSUE_RECORD

DEVICE_DIRECT_HINT_RECORD
Record_ID: ACME_WS_001_DIRECT_HINT
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-001
Assigned_User: Jordan Reed
Direct_Troubleshooting_Hint: Do not assume a hardware bottleneck first. Check Outlook authentication, printer defaults, and browser or insurance-portal behavior.
END_DEVICE_DIRECT_HINT_RECORD

USER_ASSIGNMENT_RECORD
Record_ID: ACME_WS_002_USER
Client_ID: ACME-DENTAL
User: Maria Collins
User_ID: ACME-USER-002
Email: maria.collins@acme-dental.test
Role: Billing
Primary_Device: ACME-WS-002
END_USER_ASSIGNMENT_RECORD

USER_RESOURCE_RECORD
Record_ID: ACME_WS_002_RESOURCES
Client_ID: ACME-DENTAL
User: Maria Collins
User_ID: ACME-USER-002
Primary_Device: ACME-WS-002
Shared_Resources: Billing shared mailbox; Billing folder on file server
END_USER_RESOURCE_RECORD

DEVICE_HARDWARE_RECORD
Record_ID: ACME_WS_002_HARDWARE
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-002
OS: Windows 10 Pro
CPU: Intel Core i5-9500
RAM_GB: 8
Storage: 1TB HDD
Storage_Type: HDD
END_DEVICE_HARDWARE_RECORD

DEVICE_RISK_RECORD
Record_ID: ACME_WS_002_RISK
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-002
Assigned_User: Maria Collins
Below_16GB_RAM: Yes
Uses_HDD: Yes
Under_Spec_Device: Yes
Performance_Risk: High
Upgrade_Priority: Medium
END_DEVICE_RISK_RECORD

DEVICE_PLATFORM_RECORD
Record_ID: ACME_WS_002_PLATFORM
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-002
Device_Type: Desktop
Manufacturer: HP
Model: ProDesk 600 G5
Domain_Joined: Yes
Network_Connection: Ethernet
VLAN: Workstations
END_DEVICE_PLATFORM_RECORD

DEVICE_APPLICATION_RECORD
Record_ID: ACME_WS_002_APPLICATIONS
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-002
Assigned_User: Maria Collins
Common_Apps: Microsoft 365 Apps; Outlook; QuickBooks Desktop; Excel; Dentrix
END_DEVICE_APPLICATION_RECORD

DEVICE_KNOWN_ISSUE_RECORD
Record_ID: ACME_WS_002_KNOWN_ISSUES
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-002
Assigned_User: Maria Collins
Known_Issues: QuickBooks slowness; QuickBooks multi-user errors; Excel files opening read-only; slow login after password changes
END_DEVICE_KNOWN_ISSUE_RECORD

DEVICE_DIRECT_HINT_RECORD
Record_ID: ACME_WS_002_DIRECT_HINT
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-002
Assigned_User: Maria Collins
Direct_Troubleshooting_Hint: Check HDD health, free space, RAM pressure, startup load, file-server connectivity, and QuickBooks company-file behavior. Consider SSD and RAM upgrades.
END_DEVICE_DIRECT_HINT_RECORD

USER_ASSIGNMENT_RECORD
Record_ID: ACME_WS_003_USER
Client_ID: ACME-DENTAL
User: Evan Brooks
User_ID: ACME-USER-003
Email: evan.brooks@acme-dental.test
Role: Hygienist / Operatory 1
Primary_Device: ACME-WS-003
END_USER_ASSIGNMENT_RECORD

USER_RESOURCE_RECORD
Record_ID: ACME_WS_003_RESOURCES
Client_ID: ACME-DENTAL
User: Evan Brooks
User_ID: ACME-USER-003
Primary_Device: ACME-WS-003
Shared_Resources: Clinical imaging share; Operatory 1 printer; USB intraoral camera
END_USER_RESOURCE_RECORD

DEVICE_HARDWARE_RECORD
Record_ID: ACME_WS_003_HARDWARE
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-003
OS: Windows 11 Pro
CPU: Intel Core i5-8400
RAM_GB: 8
Storage: 256GB SSD
Storage_Type: SSD
END_DEVICE_HARDWARE_RECORD

DEVICE_RISK_RECORD
Record_ID: ACME_WS_003_RISK
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-003
Assigned_User: Evan Brooks
Below_16GB_RAM: Yes
Uses_HDD: No
Under_Spec_Device: Partial
Performance_Risk: Medium
Upgrade_Priority: Medium
END_DEVICE_RISK_RECORD

DEVICE_PLATFORM_RECORD
Record_ID: ACME_WS_003_PLATFORM
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-003
Device_Type: Operatory desktop
Manufacturer: Lenovo
Model: ThinkCentre M720s
Domain_Joined: Yes
Network_Connection: Ethernet
VLAN: Clinical
END_DEVICE_PLATFORM_RECORD

DEVICE_APPLICATION_RECORD
Record_ID: ACME_WS_003_APPLICATIONS
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-003
Assigned_User: Evan Brooks
Common_Apps: Dentrix; ImagingCapture Lite; Chrome; Adobe Reader
END_DEVICE_APPLICATION_RECORD

DEVICE_KNOWN_ISSUE_RECORD
Record_ID: ACME_WS_003_KNOWN_ISSUES
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-003
Assigned_User: Evan Brooks
Known_Issues: ImagingCapture Lite freezes; USB intraoral camera disconnects; mapped clinical imaging drive may disconnect
END_DEVICE_KNOWN_ISSUE_RECORD

DEVICE_DIRECT_HINT_RECORD
Record_ID: ACME_WS_003_DIRECT_HINT
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-003
Assigned_User: Evan Brooks
Direct_Troubleshooting_Hint: Check USB cable and port, Device Manager, USB power management, ImagingCapture Lite, and the clinical imaging share. Do not blame SSD storage.
END_DEVICE_DIRECT_HINT_RECORD

USER_ASSIGNMENT_RECORD
Record_ID: ACME_WS_004_USER
Client_ID: ACME-DENTAL
User: Priya Shah
User_ID: ACME-USER-004
Email: priya.shah@acme-dental.test
Role: Office Manager
Primary_Device: ACME-WS-004
END_USER_ASSIGNMENT_RECORD

USER_RESOURCE_RECORD
Record_ID: ACME_WS_004_RESOURCES
Client_ID: ACME-DENTAL
User: Priya Shah
User_ID: ACME-USER-004
Primary_Device: ACME-WS-004
Shared_Resources: Office management shared mailbox; Payroll export folder; Billing reports folder
END_USER_RESOURCE_RECORD

DEVICE_HARDWARE_RECORD
Record_ID: ACME_WS_004_HARDWARE
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-004
OS: Windows 11 Pro
CPU: Intel Core i7-12700
RAM_GB: 32
Storage: 512GB SSD
Storage_Type: SSD
END_DEVICE_HARDWARE_RECORD

DEVICE_RISK_RECORD
Record_ID: ACME_WS_004_RISK
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-004
Assigned_User: Priya Shah
Below_16GB_RAM: No
Uses_HDD: No
Under_Spec_Device: No
Performance_Risk: Low
Upgrade_Priority: Low
END_DEVICE_RISK_RECORD

DEVICE_PLATFORM_RECORD
Record_ID: ACME_WS_004_PLATFORM
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-004
Device_Type: Desktop
Manufacturer: Dell
Model: OptiPlex 7000
Domain_Joined: Yes
Network_Connection: Ethernet
VLAN: Workstations
END_DEVICE_PLATFORM_RECORD

DEVICE_APPLICATION_RECORD
Record_ID: ACME_WS_004_APPLICATIONS
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-004
Assigned_User: Priya Shah
Common_Apps: Microsoft 365 Apps; Outlook; Excel; QuickBooks Desktop; Teams; Chrome
END_DEVICE_APPLICATION_RECORD

DEVICE_KNOWN_ISSUE_RECORD
Record_ID: ACME_WS_004_KNOWN_ISSUES
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-004
Assigned_User: Priya Shah
Known_Issues: Large Excel reports may crash; Teams may select the wrong microphone or speaker; QuickBooks may show a multi-user warning
END_DEVICE_KNOWN_ISSUE_RECORD

DEVICE_DIRECT_HINT_RECORD
Record_ID: ACME_WS_004_DIRECT_HINT
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-004
Assigned_User: Priya Shah
Direct_Troubleshooting_Hint: Hardware is strong. For Teams audio, check Teams device settings, Windows defaults, headset or dock behavior, and audio drivers before upgrades.
END_DEVICE_DIRECT_HINT_RECORD

USER_ASSIGNMENT_RECORD
Record_ID: ACME_WS_005_USER
Client_ID: ACME-DENTAL
User: Lucas Nguyen
User_ID: ACME-USER-005
Email: lucas.nguyen@acme-dental.test
Role: Sterilization / Shared Clinical Station
Primary_Device: ACME-WS-005
END_USER_ASSIGNMENT_RECORD

USER_RESOURCE_RECORD
Record_ID: ACME_WS_005_RESOURCES
Client_ID: ACME-DENTAL
User: Lucas Nguyen
User_ID: ACME-USER-005
Primary_Device: ACME-WS-005
Shared_Resources: Sterilization checklist folder; Sterilization label printer; Shared clinical station login
END_USER_RESOURCE_RECORD

DEVICE_HARDWARE_RECORD
Record_ID: ACME_WS_005_HARDWARE
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-005
OS: Windows 10 Pro
CPU: Intel Core i3-6100
RAM_GB: 4
Storage: 500GB HDD
Storage_Type: HDD
END_DEVICE_HARDWARE_RECORD

DEVICE_RISK_RECORD
Record_ID: ACME_WS_005_RISK
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-005
Assigned_User: Lucas Nguyen
Below_16GB_RAM: Yes
Uses_HDD: Yes
Under_Spec_Device: Yes
Performance_Risk: Critical
Upgrade_Priority: High
END_DEVICE_RISK_RECORD

DEVICE_PLATFORM_RECORD
Record_ID: ACME_WS_005_PLATFORM
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-005
Device_Type: Shared clinical station
Manufacturer: Dell
Model: OptiPlex 3040
Domain_Joined: Yes
Network_Connection: Ethernet
VLAN: Clinical
END_DEVICE_PLATFORM_RECORD

DEVICE_APPLICATION_RECORD
Record_ID: ACME_WS_005_APPLICATIONS
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-005
Assigned_User: Lucas Nguyen
Common_Apps: Dentrix; Chrome; Label Printer Utility
END_DEVICE_APPLICATION_RECORD

DEVICE_KNOWN_ISSUE_RECORD
Record_ID: ACME_WS_005_KNOWN_ISSUES
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-005
Assigned_User: Lucas Nguyen
Known_Issues: Very slow startup; Windows updates remain pending; label printer disconnects
END_DEVICE_KNOWN_ISSUE_RECORD

DEVICE_DIRECT_HINT_RECORD
Record_ID: ACME_WS_005_DIRECT_HINT
Client_ID: ACME-DENTAL
Device_ID: ACME-WS-005
Assigned_User: Lucas Nguyen
Direct_Troubleshooting_Hint: This is the weakest workstation. Check RAM, HDD health, startup apps, updates, and USB power management. Prioritize replacement or SSD and RAM upgrades.
END_DEVICE_DIRECT_HINT_RECORD
