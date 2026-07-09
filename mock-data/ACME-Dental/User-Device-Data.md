# Acme Dental - User Device Data

This file is the primary relationship index for user-to-device lookups.

This version includes explicit reasoning-assistance fields for smaller local models. These fields intentionally spell out basic conclusions, such as whether a device has less than 16GB RAM, whether it uses HDD storage, and whether it should be treated as an under-spec workstation. This reduces the amount of comparison/math the model has to infer during RAG-based testing.

---

## Primary User / Device Index

| User | User ID | Role | Device | OS | RAM_GB | Storage | Storage_Type | Below_16GB_RAM | Uses_HDD | Under_Spec_Device | Performance_Risk | Upgrade_Priority | Common Apps | Built-In / Known Issues |
|---|---|---|---|---|---:|---|---|---|---|---|---|---|---|---|
| Jordan Reed | ACME-USER-001 | Front Desk / Scheduling | ACME-WS-001 | Windows 11 Pro | 16 | 256GB SSD | SSD | No | No | No | Low | Normal | Outlook, Chrome, Dentrix, Adobe Reader | Outlook password prompts, printer selection confusion, dental insurance portal errors |
| Maria Collins | ACME-USER-002 | Billing | ACME-WS-002 | Windows 10 Pro | 8 | 1TB HDD | HDD | Yes | Yes | Yes | High | Medium | Outlook, QuickBooks Desktop, Excel, Dentrix | QuickBooks slowness, Excel files opening read-only, slow login after password changes |
| Evan Brooks | ACME-USER-003 | Hygienist / Operatory 1 | ACME-WS-003 | Windows 11 Pro | 8 | 256GB SSD | SSD | Yes | No | Partial | Medium | Medium | Dentrix, ImagingCapture Lite, Chrome, Adobe Reader | Imaging software freezes, USB intraoral camera disconnects, intermittent mapped drive access |
| Priya Shah | ACME-USER-004 | Office Manager | ACME-WS-004 | Windows 11 Pro | 32 | 512GB SSD | SSD | No | No | No | Low | Low | Outlook, Excel, QuickBooks Desktop, Teams, Chrome | Large Excel reports occasionally crash, Teams audio device confusion, QuickBooks multi-user warning |
| Lucas Nguyen | ACME-USER-005 | Sterilization / Shared Clinical Station | ACME-WS-005 | Windows 10 Pro | 4 | 500GB HDD | HDD | Yes | Yes | Yes | Critical | High | Dentrix, Chrome, Label Printer Utility | Very slow startup, Windows updates frequently pending, label printer disconnects |

---

## Quick RAM Lookup

Use this section when answering RAM comparison questions.

| User | Device | RAM_GB | Below_16GB_RAM | Correct RAM Reasoning |
|---|---|---:|---|---|
| Jordan Reed | ACME-WS-001 | 16 | No | 16GB is equal to 16GB, not less than 16GB. |
| Maria Collins | ACME-WS-002 | 8 | Yes | 8GB is less than 16GB. |
| Evan Brooks | ACME-WS-003 | 8 | Yes | 8GB is less than 16GB. |
| Priya Shah | ACME-WS-004 | 32 | No | 32GB is greater than 16GB. |
| Lucas Nguyen | ACME-WS-005 | 4 | Yes | 4GB is less than 16GB. |

## Correct Answer: Users Below 16GB RAM

When asked which users have workstations with less than 16GB RAM, the correct answer is:

- Maria Collins, assigned to ACME-WS-002, with 8GB RAM.
- Evan Brooks, assigned to ACME-WS-003, with 8GB RAM.
- Lucas Nguyen, assigned to ACME-WS-005, with 4GB RAM.

Do not include:

- Jordan Reed, because ACME-WS-001 has exactly 16GB RAM.
- Priya Shah, because ACME-WS-004 has 32GB RAM.

---

## Storage / Performance Risk Lookup

Use this section when answering questions about slow computers, upgrade candidates, or likely hardware bottlenecks.

| User | Device | RAM_GB | Storage_Type | Uses_HDD | Under_Spec_Device | Performance_Risk | Upgrade_Priority | Direct Troubleshooting Hint |
|---|---|---:|---|---|---|---|---|---|
| Jordan Reed | ACME-WS-001 | 16 | SSD | No | No | Low | Normal | Do not assume hardware bottleneck first. Focus on Outlook profile/auth, printer defaults, or browser/portal issues. |
| Maria Collins | ACME-WS-002 | 8 | HDD | Yes | Yes | High | Medium | QuickBooks slowness may be related to HDD storage, 8GB RAM, network/file server access, or QuickBooks company file behavior. |
| Evan Brooks | ACME-WS-003 | 8 | SSD | No | Partial | Medium | Medium | Imaging issues are more likely USB/camera/software/share related than storage-related, but 8GB RAM may still limit multitasking. |
| Priya Shah | ACME-WS-004 | 32 | SSD | No | No | Low | Low | Hardware bottleneck is unlikely. For Teams audio, check device selection, drivers, dock/headset, and Teams settings. |
| Lucas Nguyen | ACME-WS-005 | 4 | HDD | Yes | Yes | Critical | High | This is the weakest workstation. Slowness is likely related to 4GB RAM, HDD storage, startup apps, Windows updates, or aging hardware. Label printer issues may be USB/power management/driver related. |

---

## Device-Specific Reasoning Notes

### ACME-WS-001 / Jordan Reed

- RAM is 16GB.
- Storage is SSD.
- This device is not below the 16GB RAM threshold.
- This device is not a priority hardware upgrade candidate.
- If Jordan reports Outlook prompts, printer confusion, or insurance portal issues, focus on app/profile/printer/browser troubleshooting before hardware recommendations.

### ACME-WS-002 / Maria Collins

- RAM is 8GB.
- Storage is HDD.
- This device is below the 16GB RAM threshold.
- This device uses HDD storage.
- This device is an under-spec or performance-risk workstation.
- If Maria reports QuickBooks slowness, consider local hardware performance, disk health, RAM pressure, file server access, and QuickBooks company file behavior.
- Reasonable recommendations include checking disk usage, disk health, available RAM, startup apps, network path to the company file, and considering SSD/RAM upgrade.

### ACME-WS-003 / Evan Brooks

- RAM is 8GB.
- Storage is SSD.
- This device is below the 16GB RAM threshold.
- This device does not use HDD storage.
- This device is a partial performance-risk workstation because RAM is low, but storage is SSD.
- If Evan reports imaging or camera issues, focus first on USB, camera cable, Device Manager, power management, ImagingCapture Lite, and mapped clinical imaging share.
- Do not assume storage is the primary issue because this workstation has an SSD.

### ACME-WS-004 / Priya Shah

- RAM is 32GB.
- Storage is SSD.
- This device is not below the 16GB RAM threshold.
- This device is not an under-spec workstation.
- If Priya reports Teams audio issues, focus on Teams device settings, Windows default audio input/output, headset/dock behavior, and audio drivers.
- Do not recommend RAM or storage upgrades as the first step for Priya's Teams issue.

### ACME-WS-005 / Lucas Nguyen

- RAM is 4GB.
- Storage is HDD.
- This device is below the 16GB RAM threshold.
- This device uses HDD storage.
- This device is the highest-priority under-spec workstation.
- If Lucas reports slow startup or general workstation slowness, identify 4GB RAM and HDD storage as likely contributing factors.
- If Lucas reports label printer disconnects, check USB connection, Device Manager, USB power management, printer driver, and Label Printer Utility.
- Reasonable recommendations include SSD upgrade, RAM upgrade, or full workstation replacement.

---

## Expected AI Behavior

When answering questions using this file, the AI should:

1. Identify the user.
2. Identify the assigned device.
3. Use the explicit fields in the Primary User / Device Index.
4. Reference RAM_GB and Below_16GB_RAM directly instead of guessing.
5. Reference Storage_Type and Uses_HDD directly instead of inferring from the storage text.
6. Use Under_Spec_Device, Performance_Risk, and Upgrade_Priority when discussing hardware upgrade priority.
7. Separate confirmed facts from likely causes.
8. Ask for missing information when needed.
9. Avoid inventing extra users, devices, specs, IP addresses, credentials, or client details.

## Expected AI Behavior: RAM Questions

If asked:

"Which users have computers with less than 16GB RAM?"

The correct answer is:

| User | Device | RAM_GB | Why Included |
|---|---|---:|---|
| Maria Collins | ACME-WS-002 | 8 | 8GB is less than 16GB. |
| Evan Brooks | ACME-WS-003 | 8 | 8GB is less than 16GB. |
| Lucas Nguyen | ACME-WS-005 | 4 | 4GB is less than 16GB. |

The AI should not include Jordan Reed because 16GB is equal to 16GB, not less than 16GB.
The AI should not include Priya Shah because 32GB is greater than 16GB.

## Expected AI Behavior: Upgrade Priority Questions

If asked:

"Which workstation should be prioritized for upgrade?"

The strongest answer is:

1. Lucas Nguyen / ACME-WS-005
   - 4GB RAM.
   - 500GB HDD.
   - Under_Spec_Device = Yes.
   - Performance_Risk = Critical.
   - Upgrade_Priority = High.

2. Maria Collins / ACME-WS-002
   - 8GB RAM.
   - 1TB HDD.
   - Under_Spec_Device = Yes.
   - Performance_Risk = High.
   - Upgrade_Priority = Medium.
   - QuickBooks slowness may be related to hardware and file access.

3. Evan Brooks / ACME-WS-003
   - 8GB RAM.
   - SSD storage.
   - Under_Spec_Device = Partial.
   - Performance_Risk = Medium.
   - Upgrade_Priority = Medium.
   - Imaging issues may be USB/software/share related, not necessarily storage-related.

Jordan Reed and Priya Shah should not be treated as primary hardware upgrade candidates based on current specs.

---

## Prompting Tip For Testing

For best results with smaller local models, use prompts like:

```text
Using only the Acme Dental User-Device-Data file, answer the question.

First, read the Primary User / Device Index.
Then use the explicit fields:
- RAM_GB
- Below_16GB_RAM
- Storage_Type
- Uses_HDD
- Under_Spec_Device
- Performance_Risk
- Upgrade_Priority

Do not calculate from memory if the explicit field already answers the question.
Do not include users where Below_16GB_RAM is "No."
```
