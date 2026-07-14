# Pine Ridge Township Police Department - Client-Specific SOPs

## SOP 1 - CAD or Dispatch Workstation Issue

1. Confirm whether backup dispatch capability is available.
2. Determine whether one workstation or multiple stations are affected.
3. Confirm whether VoIP/phone console remains functional.
4. Preserve the error message, timestamp, and last successful action.
5. Check the local client before any server-wide restart.
6. Use only approved restart procedures.
7. Escalate immediately if backup capability is unavailable or multiple stations are affected.

Do not:
- restart the CAD server for a single-client issue,
- alter dispatch records,
- clear application data without approval,
- delay escalation when public-safety workflow is blocked.

## SOP 2 - RMS, Police Records, and Evidence Intake

1. Confirm exact application/share and user authorization.
2. Determine whether one or multiple users are affected.
3. Preserve timestamps, queue status, and file names.
4. Verify whether files exist before retrying scans/uploads.
5. Avoid duplicate ingestion.
6. Escalate integrity concerns immediately.

Do not:
- delete, rename, move, or edit evidence files,
- grant broad permissions,
- copy sensitive data into a general ticket,
- use test files in a production evidence location.

## SOP 3 - Body-Camera Upload

1. Record dock, camera count, queue state, and time.
2. Check dock power and network link.
3. Confirm whether other docks are affected.
4. Preserve queued data.
5. Check approved service/vendor status.
6. Escalate if data integrity is uncertain or multiple docks fail.

## SOP 4 - Police Mobile VPN

1. Verify user identity.
2. Record exact error.
3. Confirm internet access and device time.
4. Check whether password changed.
5. Clear only approved stale credentials.
6. Verify MFA.
7. Escalate repeated failures or suspected compromise.

## SOP 5 - Police Printer Queue

1. Identify the exact printer and queue.
2. Determine whether the job may contain sensitive information.
3. Confirm job ownership before removal.
4. Check printer state and queue.
5. Clear only authorized stuck jobs.
6. Print an approved test page.
7. Escalate recurring hardware/network faults.

## SOP 6 - Police Security Alert

Unexpected MFA prompts, suspicious logins, forwarding rules, OAuth grants, or new-device alerts are High priority.

1. Tell the user not to approve unexpected prompts.
2. Verify identity.
3. Contain the account when authorized.
4. Preserve alert details.
5. Escalate promptly.
6. Limit sensitive details in client-facing communication.
