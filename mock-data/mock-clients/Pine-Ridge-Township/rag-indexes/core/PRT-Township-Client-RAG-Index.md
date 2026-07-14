# Pine Ridge Township Client RAG Index

Authoritative relationship records for the two fictional township clients and their shared services.

TOWNSHIP_RECORD
Township: Pine Ridge Township
Dataset_Type: Fictional MSP test data
Shared_Organization: Yes
Shared_Microsoft_365_Tenant: Yes
Shared_Email_Domain: pineridgetownship.example
Shared_File_Server: PR-TW-FS01
Real_Credentials_Included: No
Production_Use_Approved: No
END_TOWNSHIP_RECORD

CLIENT_RECORD
Client_ID: PRT-BOR
Client_Name: Pine Ridge Township Borough Building
Site_Type: Municipal office
Primary_Functions: Administration; finance; taxes; permits; code enforcement
Operational_Criticality: Medium
Normal_Support_Priority: Business-hours support
Public_Safety_Critical: No
END_CLIENT_RECORD

CLIENT_RECORD
Client_ID: PRT-PD
Client_Name: Pine Ridge Township Police Department
Site_Type: Public-safety office
Primary_Functions: Dispatch; patrol; records; police administration
Operational_Criticality: High to Critical
Normal_Support_Priority: Priority support
Immediate_Escalation_Areas: Dispatch; CAD; VoIP; RMS; evidence integrity
END_CLIENT_RECORD

SHARED_SERVICE_RECORD
Service: Microsoft 365
Used_By: PRT-BOR; PRT-PD
Relationship: Same tenant with separate department accounts, groups, and permissions
END_SHARED_SERVICE_RECORD

SHARED_SERVICE_RECORD
Service: Township file server
Service_ID: PR-TW-FS01
Used_By: PRT-BOR; PRT-PD
Relationship: Separate role-based shares; shared server ownership does not grant cross-department access
END_SHARED_SERVICE_RECORD

SHARED_SERVICE_RECORD
Service: MSP support and security triage
Used_By: PRT-BOR; PRT-PD
Relationship: Shared workflow; police incidents receive higher public-safety and security sensitivity
END_SHARED_SERVICE_RECORD
