# Acme Dental - Workstations

## Device: ACME-WS-001

- Assigned user: Jordan Reed
- User ID: ACME-USER-001
- Type: Desktop
- Manufacturer: Dell
- Model: OptiPlex 5090
- OS: Windows 11 Pro
- CPU: Intel Core i5-10500
- RAM: 16GB
- Storage: 256GB SSD
- Domain joined: Yes
- Primary apps:
  - Microsoft 365 Apps
  - Chrome
  - Dentrix
  - Adobe Reader
- Network:
  - Connection: Ethernet
  - VLAN: Workstations
- Known notes:
  - User prints frequently to front desk printer.
  - Outlook profile was rebuilt once previously.
  - Chrome is required for the dental insurance portal.

## Device: ACME-WS-002

- Assigned user: Maria Collins
- User ID: ACME-USER-002
- Type: Desktop
- Manufacturer: HP
- Model: ProDesk 600 G5
- OS: Windows 10 Pro
- CPU: Intel Core i5-9500
- RAM: 8GB
- Storage: 1TB HDD
- Domain joined: Yes
- Primary apps:
  - Microsoft 365 Apps
  - QuickBooks Desktop
  - Excel
  - Dentrix
- Network:
  - Connection: Ethernet
  - VLAN: Workstations
- Known notes:
  - This is one of the slower machines in the office.
  - QuickBooks performance complaints are common.
  - Recommend SSD upgrade if slowness persists.

## Device: ACME-WS-003

- Assigned user: Evan Brooks
- User ID: ACME-USER-003
- Type: Operatory desktop
- Manufacturer: Lenovo
- Model: ThinkCentre M720s
- OS: Windows 11 Pro
- CPU: Intel Core i5-8400
- RAM: 8GB
- Storage: 256GB SSD
- Domain joined: Yes
- Primary apps:
  - Dentrix
  - ImagingCapture Lite
  - Chrome
  - Adobe Reader
- Network:
  - Connection: Ethernet
  - VLAN: Clinical
- Peripherals:
  - USB intraoral camera
  - Operatory 1 printer
- Known notes:
  - Imaging software can freeze during patient image capture.
  - USB camera disconnects may be related to power management or cable/hub issues.
  - Clinical imaging share should be checked when image save failures occur.

## Device: ACME-WS-004

- Assigned user: Priya Shah
- User ID: ACME-USER-004
- Type: Desktop
- Manufacturer: Dell
- Model: OptiPlex 7000
- OS: Windows 11 Pro
- CPU: Intel Core i7-12700
- RAM: 32GB
- Storage: 512GB SSD
- Domain joined: Yes
- Primary apps:
  - Microsoft 365 Apps
  - Outlook
  - Excel
  - QuickBooks Desktop
  - Teams
  - Chrome
- Network:
  - Connection: Ethernet
  - VLAN: Workstations
- Known notes:
  - Hardware is stronger than most other workstations.
  - Large Excel report crashes are less likely caused by low system resources.
  - Teams audio issues are likely device selection, driver, or headset related.

## Device: ACME-WS-005

- Assigned user: Lucas Nguyen
- User ID: ACME-USER-005
- Type: Shared clinical station
- Manufacturer: Dell
- Model: OptiPlex 3040
- OS: Windows 10 Pro
- CPU: Intel Core i3-6100
- RAM: 4GB
- Storage: 500GB HDD
- Domain joined: Yes
- Primary apps:
  - Dentrix
  - Chrome
  - Label Printer Utility
- Network:
  - Connection: Ethernet
  - VLAN: Clinical
- Peripherals:
  - USB label printer
- Known notes:
  - This is the weakest workstation in the office.
  - Startup and login slowness are expected due to 4GB RAM and HDD storage.
  - Label printer disconnects may be USB, driver, or Windows power management related.
  - This workstation should be prioritized for replacement or SSD/RAM upgrade.
