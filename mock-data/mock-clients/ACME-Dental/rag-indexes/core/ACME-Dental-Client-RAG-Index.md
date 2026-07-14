# ACME Dental Client RAG Index

Authoritative client identity, support-window, workflow, and data-safety records.

CLIENT_RECORD
Client_ID: ACME-DENTAL
Client_Name: Acme Dental Group
Industry: Dental office
Site_Count: 1
Primary_Site: Main Office
Approximate_Users: 5
Approximate_Workstations: 5
END_CLIENT_RECORD

SUPPORT_WINDOW_RECORD
Client_ID: ACME-DENTAL
Business_Hours: Monday-Friday, 8:00 AM-5:00 PM
Normal_Support: Normal business support
Higher_Urgency: Front desk, billing, and clinical workflow interruptions
END_SUPPORT_WINDOW_RECORD

WORKFLOW_RECORD
Client_ID: ACME-DENTAL
Workflow: Front desk
Dependencies: Outlook; shared calendars; patient scheduling; ACME-PRN-001
END_WORKFLOW_RECORD

WORKFLOW_RECORD
Client_ID: ACME-DENTAL
Workflow: Billing
Dependencies: QuickBooks Desktop; Excel; billing folders; insurance portals
END_WORKFLOW_RECORD

WORKFLOW_RECORD
Client_ID: ACME-DENTAL
Workflow: Clinical
Dependencies: Dentrix; imaging software; clinical imaging share; operatory printers
END_WORKFLOW_RECORD

WORKFLOW_RECORD
Client_ID: ACME-DENTAL
Workflow: Office management
Dependencies: Microsoft 365; QuickBooks reporting; payroll exports; shared folders
END_WORKFLOW_RECORD

DATA_SAFETY_RULE
Client_ID: ACME-DENTAL
Dataset_Type: Fictional sanitized MSP test data
Real_Client_Data_Allowed: No
Production_Credentials_Allowed: No
END_DATA_SAFETY_RULE
