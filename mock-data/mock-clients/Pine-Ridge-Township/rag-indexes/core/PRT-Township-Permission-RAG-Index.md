# Pine Ridge Township Permission RAG Index

Authoritative cross-client access boundaries and permission-change safeguards.

ACCESS_RULE
Resource: \\PR-TW-FS01\Borough
Borough_Access: Role-based access
Police_Access: No by default
Approval_Rule: Do not grant cross-department access without explicit approval
END_ACCESS_RULE

ACCESS_RULE
Resource: \\PR-TW-FS01\Finance
Borough_Access: Finance staff and approved management only
Police_Access: No
Approval_Rule: Permission changes require documented management approval
END_ACCESS_RULE

ACCESS_RULE
Resource: \\PR-TW-FS01\Tax
Borough_Access: Tax staff and approved management only
Police_Access: No
Approval_Rule: Permission changes require documented approval
END_ACCESS_RULE

ACCESS_RULE
Resource: \\PR-TW-FS01\PoliceRecords
Borough_Access: No
Police_Access: Authorized records and police staff only
Approval_Rule: Do not grant access without documented authorization
END_ACCESS_RULE

ACCESS_RULE
Resource: \\PR-TW-FS01\EvidenceIntake
Borough_Access: No
Police_Access: Authorized police staff only
Safety_Rule: Do not move, rename, edit, or delete evidence files during basic troubleshooting
END_ACCESS_RULE

ACCESS_RULE
Resource: Microsoft 365 tenant
Borough_Access: Yes
Police_Access: Yes
Boundary: Same tenant does not imply shared mailboxes, groups, shares, or application permissions
END_ACCESS_RULE

PERMISSION_WORKFLOW
Workflow_ID: PRT-PERM-CHANGE
Required_Checks: Confirm exact resource; user department; job role; prior access; network connectivity; approval
Do_Not_Do: Do not add a user to a privileged group merely to test access
Escalation_Trigger: Approval is missing or group membership appears incorrect
END_PERMISSION_WORKFLOW
