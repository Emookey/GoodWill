# SOP - Printer Troubleshooting

## Purpose

Use this SOP when a user reports that a printer is missing, offline, printing to the wrong tray, or not working from an application.

## Initial Questions

- Which printer is affected?
- Is the printer network, Wi-Fi, or USB connected?
- Is the issue affecting one user or multiple users?
- Can the user print a Windows test page?
- Can the user print from another application?
- Did the printer or workstation recently reboot?

## Basic Troubleshooting Order

1. Confirm the printer has power and no hardware error.
2. Confirm the connection type:
   - Ethernet
   - Wi-Fi
   - USB
3. For network printers, confirm IP address and ping status.
4. For USB printers, check Device Manager and USB power management.
5. Confirm the printer is installed using a TCP/IP port when possible.
6. Avoid WSD ports for business-critical printers when TCP/IP is available.
7. Check default printer settings.
8. Check application-specific printer selection.
9. Reinstall or update the printer driver if needed.

## Notes

- Wi-Fi printers may drop after power loss or weak signal.
- USB label printers may disappear after sleep, reboot, or USB power management.
- If only one application cannot print, check that application's printer selection before reinstalling the device.
