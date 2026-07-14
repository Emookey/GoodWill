# Pine Ridge Township RAG Authority Index

Import this file with the core RAG indexes. It tells the model which record type is authoritative and prevents ticket history from being treated as device inventory.

AUTHORITY_RULE
Rule_ID: PRT-AUTH-DEVICE
Authoritative_Source: Files named User-Device-RAG-Index
Authority_Scope: User assignment, role, device specifications, performance risk, upgrade priority, operational criticality, and device troubleshooting hints
Do_Not_Use_Instead: Ticket history, mock tickets, answer keys, or a similar device record
END_AUTHORITY_RULE

AUTHORITY_RULE
Rule_ID: PRT-AUTH-RESOURCE
Authoritative_Source: Files named Client-Resource-RAG-Index
Authority_Scope: Applications, services, shares, printers, purpose, known patterns, and escalation conditions
Do_Not_Infer: Access permission or device specifications from a resource record unless explicitly stated
END_AUTHORITY_RULE

AUTHORITY_RULE
Rule_ID: PRT-AUTH-PERMISSION
Authoritative_Source: PRT-Township-Permission-RAG-Index
Authority_Scope: Department boundaries, approved access scope, and required approval
Default: Do not grant cross-department access without documented approval
END_AUTHORITY_RULE

AUTHORITY_RULE
Rule_ID: PRT-AUTH-SOP
Authoritative_Source: Files named SOP-RAG-Index
Authority_Scope: Required first actions, safe steps, stop conditions, prohibited actions, and escalation triggers
Conflict_Rule: Use the most specific client SOP; apply shared SOPs when no client-specific rule overrides them
END_AUTHORITY_RULE

AUTHORITY_RULE
Rule_ID: PRT-AUTH-HISTORY
Authoritative_Source: Files in optional-history
Authority_Scope: Historical precedent and previously confirmed resolutions only
Not_Authoritative_For: Current root cause, current device specifications, current permissions, or proof that a repeated symptom has the same cause
END_AUTHORITY_RULE

RETRIEVAL_RULE
Rule_ID: PRT-RETRIEVE-EXACT-ID
Instruction: For a device, user, ticket, application, printer, or share identifier, use records that literally contain the exact identifier
Missing_Data_Behavior: Return Not_Found; do not substitute a similar identifier or infer a value
END_RETRIEVAL_RULE

SEPARATION_RULE
Rule_ID: PRT-SEPARATE-CLIENTS
Instruction: Do not combine Borough Building and Police Department facts unless a shared township record explicitly applies to both
Shared_Tenant_Rule: A shared Microsoft 365 tenant does not imply shared mailbox, share, group, or application permissions
END_SEPARATION_RULE

TESTING_RULE
Rule_ID: PRT-BLIND-TESTING
Instruction: Do not import Mock-Ticket-Answer-Key files during blind testing
Reason: Answer keys leak expected diagnoses and create retrieval noise
END_TESTING_RULE
