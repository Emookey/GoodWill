# ACME Dental Atomic Mock Tickets

Use these records for controlled ticket tests. This file is deliberately outside the core RAG folder and should not be persistently imported during clean inventory testing.

MOCK_TICKET_RECORD
Ticket_ID: ACME-TICKET-001
Client_ID: ACME-DENTAL
Reported_By: Maria Collins
User_ID: ACME-USER-002
Device_ID: ACME-WS-002
Issue_Category: Application performance
Summary: QuickBooks is very slow when opening the company file
END_MOCK_TICKET_RECORD

MOCK_TICKET_CONTEXT_RECORD
Ticket_ID: ACME-TICKET-001
User_Report: QuickBooks takes several minutes to open and freezes when switching between invoices
Known_Context: ACME-WS-002 has 8GB RAM and a 1TB HDD; the company file is stored on the office file server
END_MOCK_TICKET_CONTEXT_RECORD

MOCK_TICKET_EXPECTATION_RECORD
Ticket_ID: ACME-TICKET-001
Expected_AI_Behavior: Check scope, disk health, workstation performance, network connectivity, file-server access, and SSD or RAM upgrade relevance; do not blame licensing first
Import_Rule: Do not import into persistent core RAG during blind testing
END_MOCK_TICKET_EXPECTATION_RECORD

MOCK_TICKET_RECORD
Ticket_ID: ACME-TICKET-002
Client_ID: ACME-DENTAL
Reported_By: Jordan Reed
User_ID: ACME-USER-001
Device_ID: ACME-WS-001
Issue_Category: Email
Summary: Outlook repeatedly asks for a password
END_MOCK_TICKET_RECORD

MOCK_TICKET_CONTEXT_RECORD
Ticket_ID: ACME-TICKET-002
User_Report: Outlook asks for a password every few minutes, but webmail works
Known_Context: Jordan uses Microsoft 365 and the Front Desk shared mailbox; the Outlook profile was rebuilt previously
END_MOCK_TICKET_CONTEXT_RECORD

MOCK_TICKET_EXPECTATION_RECORD
Ticket_ID: ACME-TICKET-002
Expected_AI_Behavior: Check service status, webmail, Credential Manager, shared-mailbox prompts, and simpler fixes before another profile rebuild
Import_Rule: Do not import into persistent core RAG during blind testing
END_MOCK_TICKET_EXPECTATION_RECORD

MOCK_TICKET_RECORD
Ticket_ID: ACME-TICKET-003
Client_ID: ACME-DENTAL
Reported_By: Evan Brooks
User_ID: ACME-USER-003
Device_ID: ACME-WS-003
Issue_Category: Imaging / peripheral
Summary: Intraoral camera disconnects during image capture
END_MOCK_TICKET_RECORD

MOCK_TICKET_CONTEXT_RECORD
Ticket_ID: ACME-TICKET-003
User_Report: The camera works early in the day but disconnects during patient imaging
Known_Context: ACME-WS-003 uses a USB intraoral camera; ImagingCapture Lite also freezes
END_MOCK_TICKET_CONTEXT_RECORD

MOCK_TICKET_EXPECTATION_RECORD
Ticket_ID: ACME-TICKET-003
Expected_AI_Behavior: Check cable, USB port, Device Manager power management, software version and logs; do not assume camera failure first
Import_Rule: Do not import into persistent core RAG during blind testing
END_MOCK_TICKET_EXPECTATION_RECORD

MOCK_TICKET_RECORD
Ticket_ID: ACME-TICKET-004
Client_ID: ACME-DENTAL
Reported_By: Priya Shah
User_ID: ACME-USER-004
Device_ID: ACME-WS-004
Issue_Category: Collaboration / audio
Summary: Teams calls use the wrong microphone
END_MOCK_TICKET_RECORD

MOCK_TICKET_CONTEXT_RECORD
Ticket_ID: ACME-TICKET-004
User_Report: Callers cannot hear Priya until she changes the microphone for every meeting
Known_Context: ACME-WS-004 has 32GB RAM and SSD storage; low system resources are unlikely
END_MOCK_TICKET_CONTEXT_RECORD

MOCK_TICKET_EXPECTATION_RECORD
Ticket_ID: ACME-TICKET-004
Expected_AI_Behavior: Check Teams audio settings, Windows defaults, headset or dock, and audio drivers; do not recommend RAM or storage upgrades
Import_Rule: Do not import into persistent core RAG during blind testing
END_MOCK_TICKET_EXPECTATION_RECORD

MOCK_TICKET_RECORD
Ticket_ID: ACME-TICKET-005
Client_ID: ACME-DENTAL
Reported_By: Lucas Nguyen
User_ID: ACME-USER-005
Device_ID: ACME-WS-005
Issue_Category: Performance / printer
Summary: Shared clinical station is very slow and the label printer disappears
END_MOCK_TICKET_RECORD

MOCK_TICKET_CONTEXT_RECORD
Ticket_ID: ACME-TICKET-005
User_Report: The workstation starts slowly and the label printer is sometimes missing
Known_Context: ACME-WS-005 has 4GB RAM and a 500GB HDD; ACME-PRN-003 is USB-connected to it
END_MOCK_TICKET_CONTEXT_RECORD

MOCK_TICKET_EXPECTATION_RECORD
Ticket_ID: ACME-TICKET-005
Expected_AI_Behavior: Check Task Manager, disk health, startup apps, updates, USB power, and driver; recommend replacement or SSD and RAM upgrade
Import_Rule: Do not import into persistent core RAG during blind testing
END_MOCK_TICKET_EXPECTATION_RECORD
