# Pine Ridge Township Borough Building - Client Knowledge Base

## Client Summary

| Field | Value |
|---|---|
| Client ID | PRT-BOR |
| Site | Pine Ridge Township Borough Building |
| Primary Functions | Administration, finance, taxes, permits, code enforcement |
| Normal Support Window | Weekdays, business hours |
| Highest Business-Impact Areas | Finance, tax collection, permit/front-desk operations |
| Public-Safety Critical | No |
| Real Data | No; fictional test data only |

## Network and Services

| Resource | Name | Purpose | Troubleshooting Hint |
|---|---|---|---|
| Township file server | PR-TW-FS01 | Hosts approved Borough shares | Verify network, path, saved credentials, and group membership |
| Borough shared drive | `\\PR-TW-FS01\Borough` | General municipal documents | Most staff have role-based access |
| Finance share | `\\PR-TW-FS01\Finance` | Finance reports and exports | Finance staff only; permission changes require approval |
| Tax share | `\\PR-TW-FS01\Tax` | Tax documents and exports | Tax staff and approved management only |
| Remote access | Township VPN | Used by code enforcement laptop | Check device time, internet, saved credentials, adapter, and sleep state |
| Microsoft 365 | Shared township tenant | Email, Teams, Office apps | Password changes can leave stale sessions |

## Printers and Peripherals

| Device | Assigned Area | Connection | Primary Users | Known Issue |
|---|---|---|---|---|
| PRT-BOR-MFP-01 | Main office | Network | Alice, Grace, Jenna | Users sometimes select old queue |
| PRT-BOR-CHECKSCAN-01 | Finance | USB | Daniel | Scan service may not start after reboot |
| PRT-BOR-RECEIPT-01 | Tax counter | USB | Grace | Wrong tray or paper size can block jobs |
| PRT-BOR-LABEL-01 | Permit counter | USB | Jenna | USB power management can cause disconnects |
| PRT-BOR-MFP-02 | Manager office | Network | Alice | Scan-to-email profile occasionally requires reauthentication |

## Applications

| Application | Users | Criticality | Known Pattern |
|---|---|---|---|
| MunicipalERP Finance | Daniel, Alice | High | Slow performance worsens on Daniel's HDD-based workstation |
| TaxSuite | Grace | High | Share access may fail after password changes |
| PermitTrack | Jenna | High | Local workstation slowness and label-printer issues can block permits |
| GIS Viewer | Robert | Medium | Uses significant RAM; VPN stability affects remote use |
| Microsoft 365 | All users | Medium to High | Credential prompts often follow password changes |
| Adobe Acrobat | Alice, Grace | Medium | Signing and default-app confusion are common |

## Escalation Rules

| Condition | Priority | Required Action |
|---|---|---|
| Finance or tax application unavailable to multiple users | High | Escalate to senior technician/application vendor after basic connectivity checks |
| Front desk unable to issue permits or receipts | High | Establish workaround, then escalate if not restored quickly |
| Suspected account compromise | High | Follow security alert SOP immediately |
| One printer queue misselected | Low | Correct queue and document |
| Device shows disk failure indicators | High | Stop write-heavy testing, back up approved data, escalate hardware replacement |
| Permission request without management approval | Medium | Do not grant access; request written approval |

## Known Environment Patterns

1. Password changes can leave stale Outlook, VPN, and mapped-drive credentials.
2. Daniel's and Jenna's HDD-based systems are legitimate performance risks.
3. Robert's GIS slowness may involve 8GB RAM, but his SSD means HDD latency is not the main issue.
4. Grace's tax-share issues are usually authentication or permissions, not workstation hardware.
5. Old printer queues can remain visible after printer replacement.
