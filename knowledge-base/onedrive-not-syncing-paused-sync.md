# OneDrive Not Syncing – Paused Sync

## Purpose

Provide a structured troubleshooting guide for resolving OneDrive sync issues caused by syncing being paused, interrupted, or unable to process updates correctly.

---

## Symptoms

Users may report:

- Files not syncing across devices  
- Changes not updating  
- Files showing pending status  
- OneDrive appears active but not syncing  
- Missing green tick (sync confirmation)  
- Files available locally but not uploaded to the cloud  

---

## Common Causes

| Cause | Description |
|---|---|
| Sync manually paused | Syncing paused via the system tray |
| Account sign-in issue | User session expired or requires re-authentication |
| Storage quota reached | OneDrive storage limit preventing uploads |
| Network connectivity issue | Internet access unavailable or unstable |
| Application sync error | OneDrive client unable to process updates |
| Restart/update interruption | Sync interrupted following system restart or update |

---

## Important Troubleshooting Note

OneDrive can appear to be running normally while sync is paused or interrupted.

Do not rely solely on the application being visible in the system tray as confirmation that syncing is active.

Always verify the sync status directly before proceeding with deeper troubleshooting.

---

## Troubleshooting Steps

### Step 1: Reproduce the Issue

- Create or modify a file within the OneDrive folder  

If the file remains pending and does not receive a green tick:

- Issue confirmed  

This establishes a clear baseline before further investigation.

---

### Step 2: Check OneDrive Status

- Click the OneDrive icon in the system tray  

Review the status message:

- If **"Sync paused"** → likely cause identified  
- If errors are displayed → investigate application state or authentication  
- If status shows **"Up to date"** but files are not updating → continue investigation  

---

### Step 3: Verify Network Connectivity

- Open a browser and access a website  

If successful:

- Network connectivity confirmed  
- Issue isolated to OneDrive or account state  

If unsuccessful:

- Investigate connectivity before continuing  

---

### Step 4: Check Account Status

- Open OneDrive from the system tray  
- Verify whether a sign-in prompt or account warning is present  

If authentication is required:

- Sign back into Microsoft 365  
- Recheck sync behaviour  

---

### Step 5: Check Storage Availability

- Verify available OneDrive storage space  

If storage quota has been reached:

- Files may remain pending and fail to upload  
- Remove unnecessary files or increase available storage  

---

## Root Cause

The issue was caused by OneDrive syncing being paused via the system tray.

This prevented files from being uploaded and synchronised with the cloud, resulting in pending files and no updates across devices.

Additional contributing causes such as authentication state, storage limits, and interrupted sync sessions should also be considered during investigation.

---

## Resolution

### Step 1: Resume OneDrive Sync

- Click the OneDrive icon  
- Select **Resume syncing**  

---

### Step 2: Restart OneDrive (If Required)

If syncing does not resume correctly:

- Close OneDrive from the system tray  
- Reopen OneDrive from the Start Menu  
- Allow the client to reload and reconnect  

---

### Step 3: Monitor Sync Progress

- Confirm files begin uploading  
- Check for sync indicators (green tick)  
- Verify OneDrive status shows **"Up to date"**  

---

## Verification

After applying the fix:

- Files sync successfully  
- Green tick appears on files  
- OneDrive status shows **"Up to date"**  
- Files accessible across devices  
- No additional sync errors observed  

---

## Escalation Guidance

Escalate to Tier 2 support if:

- Multiple users are affected simultaneously  
- OneDrive repeatedly fails after restart  
- User account appears locked or inaccessible  
- Sync errors persist despite successful sign-in and connectivity checks  
- OneDrive application crashes or fails to launch  

When escalating, include:

- Ticket reference  
- Steps already performed  
- Any visible error messages  
- Screenshots of sync status or errors  
- Confirmation of connectivity and authentication checks  

---

## Notes

- OneDrive can appear active while sync is paused  
- Always verify sync status directly during investigation  
- Sync issues are commonly caused by paused sync, authentication state, or storage limits  
- Structured troubleshooting helps isolate whether the issue is user state, application state, or connectivity related  

---

## Related Ticket

See: [Ticket 10 – OneDrive Not Syncing](../tickets/10-onedrive-not-syncing.md)