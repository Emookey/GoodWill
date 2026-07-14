# ACME Dental RAG Authority Index

Import this file with the ACME core indexes. It identifies the authoritative source for each data type and prevents cross-client contamination.

AUTHORITY_RULE
Rule_ID: ACME-AUTH-USER-DEVICE
Authoritative_Source: ACME-Dental-User-Device-RAG-Index
Authority_Scope: User identity, role, device assignment, hardware, risk, applications, resources, known issues, and direct device hints
Do_Not_Use_Instead: Mock tickets or another client's records
END_AUTHORITY_RULE

AUTHORITY_RULE
Rule_ID: ACME-AUTH-PRINTER
Authoritative_Source: ACME-Dental-Printer-RAG-Index
Authority_Scope: Printer identity, model, location, connection, users, recurring issues, and printer-specific guidance
END_AUTHORITY_RULE

AUTHORITY_RULE
Rule_ID: ACME-AUTH-SOP
Authoritative_Source: ACME-Dental-SOP-RAG-Index
Authority_Scope: Required questions, troubleshooting order, prohibited assumptions, and escalation conditions
END_AUTHORITY_RULE

AUTHORITY_RULE
Rule_ID: ACME-AUTH-CLIENT
Authoritative_Source: ACME-Dental-Client-RAG-Index
Authority_Scope: Client identity, business hours, general workflow importance, and application environment
END_AUTHORITY_RULE

RETRIEVAL_RULE
Rule_ID: ACME-EXACT-ID
Instruction: For ACME identifiers, use records that literally contain the exact ACME identifier
Missing_Data_Behavior: Return Not_Found; do not substitute a Pine Ridge record or a similar device
END_RETRIEVAL_RULE

CLIENT_ISOLATION_RULE
Rule_ID: ACME-ISOLATION
Client_Namespace: ACME-
Instruction: ACME-prefixed users, devices, printers, and tickets belong only to Acme Dental Group
Do_Not_Combine_With: PRT-BOR or PRT-PD records unless the user explicitly requests a comparison
END_CLIENT_ISOLATION_RULE

TESTING_RULE
Rule_ID: ACME-MOCK-TICKETS
Instruction: Keep mock tickets outside persistent core RAG during clean inventory tests
Reason: Ticket context can outrank authoritative device records and bias the answer
END_TESTING_RULE
