# ACME Dental SOP RAG Index

Atomic Outlook, printer, and slow-PC procedures derived from the ACME Dental SOP files.

SOP_TRIGGER_RECORD
SOP_ID: ACME-SOP-OUTLOOK-PASSWORD
Trigger: Outlook repeatedly asks for a password
Initial_Questions: Does webmail work; one user or multiple; recent password change; shared mailbox; after reboot
END_SOP_TRIGGER_RECORD

SOP_ACTION_RECORD
SOP_ID: ACME-SOP-OUTLOOK-PASSWORD
Required_Actions: Check Microsoft 365 status; test webmail; restart Outlook; inspect Credential Manager; update Outlook; check shared-mailbox prompts
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: ACME-SOP-OUTLOOK-PASSWORD
Do_Not_Do: Do not rebuild the Outlook profile before simpler checks; do not assume the password is wrong when webmail works
Escalation_Trigger: Multiple users affected or sign-in logs show unusual activity
END_SOP_GUARDRAIL_RECORD

SOP_TRIGGER_RECORD
SOP_ID: ACME-SOP-PRINTER
Trigger: Printer missing, offline, wrong tray, or not working from an application
Initial_Questions: Exact printer; connection type; one or multiple users; Windows test page; other applications; recent reboot
END_SOP_TRIGGER_RECORD

SOP_ACTION_RECORD
SOP_ID: ACME-SOP-PRINTER
Required_Actions: Check power and hardware errors; verify Ethernet, Wi-Fi, or USB; test network reachability; check Device Manager and USB power; verify default and app selection
END_SOP_ACTION_RECORD

SOP_GUARDRAIL_RECORD
SOP_ID: ACME-SOP-PRINTER
Preferred_Port: TCP/IP when available for business-critical network printers
Do_Not_Do: Do not reinstall the device before checking application-specific printer selection
END_SOP_GUARDRAIL_RECORD

SOP_TRIGGER_RECORD
SOP_ID: ACME-SOP-SLOW-PC
Trigger: Workstation is slow, freezing, or slow to open applications
Initial_Questions: One device or multiple; one application or system-wide; recent changes; HDD or SSD; RAM amount; disk near 100 percent
END_SOP_TRIGGER_RECORD

SOP_ACTION_RECORD
SOP_ID: ACME-SOP-SLOW-PC
Required_Actions: Check Task Manager, startup impact, storage type, free space, Windows Update, pending reboot, HDD health, and local versus network application scope
END_SOP_ACTION_RECORD

SOP_DECISION_RECORD
SOP_ID: ACME-SOP-SLOW-PC
Under_Spec_4GB_HDD: Treat as under-spec for normal Windows 10 business use
Risk_8GB_HDD: May have application performance problems, especially QuickBooks or large Office files
Strong_Hardware_Rule: Strong hardware does not rule out application, driver, or profile problems
END_SOP_DECISION_RECORD
