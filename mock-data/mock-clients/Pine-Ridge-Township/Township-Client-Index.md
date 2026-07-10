# Pine Ridge Township - Client Relationship Index

This file defines the relationship between the two mock clients.

## Township Summary

| Field | Value |
|---|---|
| Township | Pine Ridge Township |
| Dataset Type | Fictional MSP test data |
| Shared Organization | Yes |
| Shared Microsoft 365 Tenant | Yes |
| Shared Email Domain | `pineridgetownship.example` |
| Shared File Services | Yes, limited by department permissions |
| Shared MSP | GoodWill Mock MSP |
| Real Credentials Included | No |
| Real Public-Safety Data Included | No |
| Production Use Approved | No |

## Client Index

| Client ID | Client Name | Site Type | Primary Function | Operational Criticality | Normal Support Priority |
|---|---|---|---|---|---|
| PRT-BOR | Pine Ridge Township - Borough Building | Municipal office | Administration, finance, taxes, permits, code enforcement | Medium | Normal business-hours support |
| PRT-PD | Pine Ridge Township - Police Department | Public-safety office | Dispatch, patrol, records, administration | High to Critical | Priority support with immediate escalation for dispatch/CAD/RMS outages |

## Shared Services

| Service | Used By | Explicit Relationship |
|---|---|---|
| Microsoft 365 | Both clients | Same tenant, separate department groups and permissions |
| Township file server | Both clients | Separate shares; users should not automatically have access across departments |
| Internet firewall | Both clients | Managed centrally; site-specific firewall and VLAN rules still apply |
| Password and MFA policy | Both clients | Same baseline policy |
| MSP support process | Both clients | Same ticketing system and documentation standards |
| Security alert process | Both clients | Same initial triage, but police alerts have higher escalation sensitivity |

## Cross-Client Reasoning Rules

1. Do not assume a Borough Building user can access Police Department shares.
2. Do not assume a Police Department user can access finance, tax, or permit data.
3. Shared Microsoft 365 does not mean shared mailbox, shared-drive, or application permissions.
4. Police dispatch, CAD, RMS, evidence, body-camera, and CJIS-related issues have higher operational sensitivity.
5. A Borough Building slowdown is normally a business-impact issue.
6. A dispatcher workstation or CAD/RMS outage can become a public-safety issue.
7. Never invent credentials, security codes, evidence details, case information, or real IP addresses.
8. Use the exact client, user, device, and application names from the dataset.

## Explicit Department Boundaries

| Resource | Borough Access | Police Access | Reasoning Hint |
|---|---|---|---|
| `\\PR-TW-FS01\Borough` | Yes, based on role | No by default | Shared server does not imply shared folder permissions |
| `\\PR-TW-FS01\Finance` | Finance staff only | No | Finance data is restricted |
| `\\PR-TW-FS01\PoliceRecords` | No | Records and authorized police staff only | Do not grant access without approval |
| `\\PR-TW-FS01\EvidenceIntake` | No | Authorized police staff only | Treat as sensitive and do not modify files during basic troubleshooting |
| Microsoft 365 tenant | Yes | Yes | Same tenant, separate accounts and groups |
