# GoodWill Multi-Client RAG Authority Index

Import this file when ACME Dental and Pine Ridge Township coexist in the same Odysseus Library.

MULTI_CLIENT_NAMESPACE_RULE
Namespace: ACME-
Client: Acme Dental Group
Instruction: Use only ACME Dental records for ACME-prefixed users, devices, printers, and tickets
END_MULTI_CLIENT_NAMESPACE_RULE

MULTI_CLIENT_NAMESPACE_RULE
Namespace: PRT-BOR-
Client: Pine Ridge Township Borough Building
Instruction: Use only Borough records for PRT-BOR-prefixed users, devices, and tickets
END_MULTI_CLIENT_NAMESPACE_RULE

MULTI_CLIENT_NAMESPACE_RULE
Namespace: PRT-PD-
Client: Pine Ridge Township Police Department
Instruction: Use only Police records for PRT-PD-prefixed users, devices, and tickets
END_MULTI_CLIENT_NAMESPACE_RULE

MULTI_CLIENT_QUERY_RULE
Rule_ID: MC-EXACT-ID
Instruction: When a prompt contains an exact identifier, resolve the client from its namespace before retrieving facts
Do_Not_Do: Do not use another client's similarly numbered device
END_MULTI_CLIENT_QUERY_RULE

MULTI_CLIENT_QUERY_RULE
Rule_ID: MC-NAMED-CLIENT
Instruction: When a client name is explicit, exclude other clients unless comparison is requested
Ambiguous_Behavior: Ask which client when the request lacks a client or exact identifier and multiple records could match
END_MULTI_CLIENT_QUERY_RULE

MULTI_CLIENT_COMPARISON_RULE
Rule_ID: MC-COMPARE
Instruction: For cross-client comparisons, label every fact with Client_ID and exact device or user ID
Do_Not_Do: Do not merge applications, permissions, SOPs, or device specifications into one composite client
END_MULTI_CLIENT_COMPARISON_RULE

MULTI_CLIENT_AUTHORITY_RULE
Rule_ID: MC-SOURCE
Device_Authority: Use each client's User-Device-RAG-Index
Printer_Authority: Use the matching client's printer or resource index
SOP_Authority: Use the matching client's SOP index
END_MULTI_CLIENT_AUTHORITY_RULE
