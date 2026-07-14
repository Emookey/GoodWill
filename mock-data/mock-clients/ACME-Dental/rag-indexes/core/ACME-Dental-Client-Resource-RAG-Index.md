# ACME Dental Client Resource RAG Index

Atomic application and shared-resource records. These records are client-scoped and must not be combined with Pine Ridge resources.

APPLICATION_RECORD
Client_ID: ACME-DENTAL
Application: Dentrix
Primary_Workflows: Front desk; billing; clinical; sterilization
Troubleshooting_Rule: Use the assigned user's device, printer, and shared-resource records before assuming a Dentrix-wide outage
END_APPLICATION_RECORD

APPLICATION_RECORD
Client_ID: ACME-DENTAL
Application: QuickBooks Desktop
Primary_Users: Maria Collins; Priya Shah
Troubleshooting_Rule: Check company-file location, multi-user scope, workstation performance, and file-server connectivity
END_APPLICATION_RECORD

APPLICATION_RECORD
Client_ID: ACME-DENTAL
Application: ImagingCapture Lite
Primary_User: Evan Brooks
Primary_Device: ACME-WS-003
Troubleshooting_Rule: Check USB camera, cable, port, power management, software state, and clinical imaging share
END_APPLICATION_RECORD

APPLICATION_RECORD
Client_ID: ACME-DENTAL
Application: Microsoft Outlook
Primary_Users: Jordan Reed; Maria Collins; Priya Shah
Troubleshooting_Rule: Check webmail, service status, stale credentials, shared-mailbox prompts, updates, and profile state
END_APPLICATION_RECORD

APPLICATION_RECORD
Client_ID: ACME-DENTAL
Application: Microsoft Teams
Primary_User: Priya Shah
Primary_Device: ACME-WS-004
Troubleshooting_Rule: Check Teams and Windows audio selection, headset or dock behavior, and audio drivers
END_APPLICATION_RECORD

SHARED_RESOURCE_RECORD
Client_ID: ACME-DENTAL
Resource: Front Desk shared mailbox
Primary_User: Jordan Reed
Purpose: Front desk communication
Access_Rule: Do not infer access for users not explicitly listed
END_SHARED_RESOURCE_RECORD

SHARED_RESOURCE_RECORD
Client_ID: ACME-DENTAL
Resource: Scheduling calendar
Primary_User: Jordan Reed
Purpose: Patient scheduling
Access_Rule: Do not infer access for users not explicitly listed
END_SHARED_RESOURCE_RECORD

SHARED_RESOURCE_RECORD
Client_ID: ACME-DENTAL
Resource: Billing shared mailbox
Primary_User: Maria Collins
Purpose: Billing communication
Access_Rule: Do not infer access for users not explicitly listed
END_SHARED_RESOURCE_RECORD

SHARED_RESOURCE_RECORD
Client_ID: ACME-DENTAL
Resource: Billing folder on file server
Primary_User: Maria Collins
Purpose: Billing files and QuickBooks-related workflow
Access_Rule: Do not grant access without approval
END_SHARED_RESOURCE_RECORD

SHARED_RESOURCE_RECORD
Client_ID: ACME-DENTAL
Resource: Clinical imaging share
Primary_User: Evan Brooks
Primary_Device: ACME-WS-003
Purpose: Clinical image storage and retrieval
Troubleshooting_Rule: Check mapped-drive access when image saves fail
END_SHARED_RESOURCE_RECORD

SHARED_RESOURCE_RECORD
Client_ID: ACME-DENTAL
Resource: Payroll export folder
Primary_User: Priya Shah
Purpose: Office-management payroll exports
Access_Rule: Do not infer access for other users
END_SHARED_RESOURCE_RECORD

SHARED_RESOURCE_RECORD
Client_ID: ACME-DENTAL
Resource: Sterilization checklist folder
Primary_User: Lucas Nguyen
Primary_Device: ACME-WS-005
Purpose: Sterilization workflow
END_SHARED_RESOURCE_RECORD
