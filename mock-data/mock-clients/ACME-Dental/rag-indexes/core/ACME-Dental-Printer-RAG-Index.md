# ACME Dental Printer RAG Index

Authoritative atomic records for the three fictional ACME printers.

PRINTER_CONFIGURATION_RECORD
Record_ID: ACME_PRN_001_CONFIG
Client_ID: ACME-DENTAL
Printer_ID: ACME-PRN-001
Printer_Name: Front Desk Printer
Model: HP LaserJet Pro M404dn
Location: Front Desk
Connection: Ethernet
Mock_IP_Address: 192.168.50.41
END_PRINTER_CONFIGURATION_RECORD

PRINTER_USAGE_RECORD
Record_ID: ACME_PRN_001_USAGE
Client_ID: ACME-DENTAL
Printer_ID: ACME-PRN-001
Used_By: Jordan Reed; Maria Collins; Priya Shah
END_PRINTER_USAGE_RECORD

PRINTER_KNOWN_ISSUE_RECORD
Record_ID: ACME_PRN_001_ISSUES
Client_ID: ACME-DENTAL
Printer_ID: ACME-PRN-001
Known_Issues: Wrong tray selection; may show offline when installed with WSD; users may need help setting it as default
END_PRINTER_KNOWN_ISSUE_RECORD

PRINTER_DIRECT_HINT_RECORD
Record_ID: ACME_PRN_001_DIRECT_HINT
Client_ID: ACME-DENTAL
Printer_ID: ACME-PRN-001
Direct_Troubleshooting_Hint: Check power, TCP/IP port, ping status, default-printer settings, tray settings, and application-specific selection. Prefer TCP/IP over WSD.
END_PRINTER_DIRECT_HINT_RECORD

PRINTER_CONFIGURATION_RECORD
Record_ID: ACME_PRN_002_CONFIG
Client_ID: ACME-DENTAL
Printer_ID: ACME-PRN-002
Printer_Name: Operatory 1 Printer
Model: Brother HL-L2370DW
Location: Operatory 1
Connection: Wi-Fi
Mock_IP_Address: 192.168.60.52
END_PRINTER_CONFIGURATION_RECORD

PRINTER_USAGE_RECORD
Record_ID: ACME_PRN_002_USAGE
Client_ID: ACME-DENTAL
Printer_ID: ACME-PRN-002
Used_By: Evan Brooks
END_PRINTER_USAGE_RECORD

PRINTER_KNOWN_ISSUE_RECORD
Record_ID: ACME_PRN_002_ISSUES
Client_ID: ACME-DENTAL
Printer_ID: ACME-PRN-002
Known_Issues: May drop from Wi-Fi after power loss; Dentrix may retain the wrong printer; wireless signal is weaker in Operatory 1
END_PRINTER_KNOWN_ISSUE_RECORD

PRINTER_DIRECT_HINT_RECORD
Record_ID: ACME_PRN_002_DIRECT_HINT
Client_ID: ACME-DENTAL
Printer_ID: ACME-PRN-002
Direct_Troubleshooting_Hint: Check printer power, Wi-Fi association, signal strength, IP reachability, Windows default printer, and Dentrix printer selection.
END_PRINTER_DIRECT_HINT_RECORD

PRINTER_CONFIGURATION_RECORD
Record_ID: ACME_PRN_003_CONFIG
Client_ID: ACME-DENTAL
Printer_ID: ACME-PRN-003
Printer_Name: Sterilization Label Printer
Model: DYMO LabelWriter 450
Location: Sterilization station
Connection: USB to ACME-WS-005
Mock_IP_Address: Not applicable
END_PRINTER_CONFIGURATION_RECORD

PRINTER_USAGE_RECORD
Record_ID: ACME_PRN_003_USAGE
Client_ID: ACME-DENTAL
Printer_ID: ACME-PRN-003
Used_By: Lucas Nguyen
END_PRINTER_USAGE_RECORD

PRINTER_KNOWN_ISSUE_RECORD
Record_ID: ACME_PRN_003_ISSUES
Client_ID: ACME-DENTAL
Printer_ID: ACME-PRN-003
Known_Issues: May disconnect after sleep or reboot; Label Printer Utility may need restart; USB power management may disable the device
END_PRINTER_KNOWN_ISSUE_RECORD

PRINTER_DIRECT_HINT_RECORD
Record_ID: ACME_PRN_003_DIRECT_HINT
Client_ID: ACME-DENTAL
Printer_ID: ACME-PRN-003
Direct_Troubleshooting_Hint: Check USB cable and port, Device Manager, USB power management, driver status, and Label Printer Utility before replacing hardware.
END_PRINTER_DIRECT_HINT_RECORD
