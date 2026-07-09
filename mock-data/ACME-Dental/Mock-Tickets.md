# Acme Dental - Mock Tickets

## Ticket: ACME-TICKET-001

- Reported by: Maria Collins
- User ID: ACME-USER-002
- Device: ACME-WS-002
- Issue category: Application performance
- Summary: QuickBooks is very slow when opening company file.
- User report:
  Maria says QuickBooks takes several minutes to open and freezes when switching between invoices.
- Known context:
  - Maria uses ACME-WS-002.
  - ACME-WS-002 has 8GB RAM and a 1TB HDD.
  - QuickBooks company file is stored on the office file server.
- Expected AI behavior:
  - Check whether other users are affected.
  - Check local disk health and performance.
  - Check network connectivity to the file server.
  - Consider RAM and SSD upgrade.
  - Avoid immediately blaming QuickBooks licensing.

## Ticket: ACME-TICKET-002

- Reported by: Jordan Reed
- User ID: ACME-USER-001
- Device: ACME-WS-001
- Issue category: Email
- Summary: Outlook keeps asking for password.
- User report:
  Jordan says Outlook asks for a password every few minutes, but webmail works.
- Known context:
  - Jordan uses Microsoft 365.
  - Jordan has access to a shared front desk mailbox.
  - Outlook profile was rebuilt once previously.
- Expected AI behavior:
  - Confirm Microsoft 365 service status.
  - Test webmail.
  - Check Credential Manager.
  - Check shared mailbox/auth prompts.
  - Consider rebuilding Outlook profile only after simpler checks.

## Ticket: ACME-TICKET-003

- Reported by: Evan Brooks
- User ID: ACME-USER-003
- Device: ACME-WS-003
- Issue category: Imaging / peripheral
- Summary: Intraoral camera disconnects during image capture.
- User report:
  Evan says the camera works at the start of the day but disconnects during patient imaging.
- Known context:
  - Evan uses ACME-WS-003.
  - ACME-WS-003 has a USB intraoral camera.
  - ImagingCapture Lite also freezes occasionally.
- Expected AI behavior:
  - Check USB cable and port.
  - Check Device Manager for USB power management.
  - Test camera on another USB port.
  - Confirm ImagingCapture Lite version and logs.
  - Avoid assuming the camera is defective before checking power/cable/driver issues.

## Ticket: ACME-TICKET-004

- Reported by: Priya Shah
- User ID: ACME-USER-004
- Device: ACME-WS-004
- Issue category: Collaboration / audio
- Summary: Teams calls use the wrong microphone.
- User report:
  Priya says callers cannot hear her unless she manually changes the microphone before every meeting.
- Known context:
  - Priya uses ACME-WS-004.
  - ACME-WS-004 has strong hardware specs: 32GB RAM and 512GB SSD.
  - Issue is likely not caused by low RAM or slow storage.
- Expected AI behavior:
  - Check Teams device settings.
  - Check Windows default input device.
  - Check headset dock or USB audio device.
  - Update audio drivers if needed.
  - Avoid recommending RAM/storage upgrades for this issue.

## Ticket: ACME-TICKET-005

- Reported by: Lucas Nguyen
- User ID: ACME-USER-005
- Device: ACME-WS-005
- Issue category: Performance / printer
- Summary: Shared clinical station is very slow and label printer disappears.
- User report:
  Lucas says the workstation takes a long time to start and the label printer is sometimes missing.
- Known context:
  - Lucas uses ACME-WS-005.
  - ACME-WS-005 has 4GB RAM and a 500GB HDD.
  - The label printer is USB-connected to ACME-WS-005.
- Expected AI behavior:
  - Identify that this workstation is under-spec for Windows 10.
  - Recommend checking Task Manager, disk health, startup apps, and Windows updates.
  - Recommend SSD/RAM upgrade or replacement.
  - Check USB power management and label printer driver.
  - Avoid treating printer disappearance and workstation slowness as unrelated without checking the local device condition.
