# OneDrive Not Syncing – Paused Sync

## Purpose

Provide a structured troubleshooting guide for resolving OneDrive sync issues caused by syncing being paused.

---

## Symptoms

Users may report:

- Files not syncing across devices  
- Changes not updating  
- Files showing pending status  
- OneDrive appears active but not syncing  
- Missing green tick (sync confirmation)  

---

## Common Causes

- OneDrive sync paused manually  
- Network connectivity issues  
- Account sign-in problems  
- Storage limits reached  
- Application sync errors  

---

## Troubleshooting Steps

### Step 1: Reproduce the Issue

- Create or modify a file in OneDrive folder  

If file does not sync:
- Issue confirmed  

---

### Step 2: Check OneDrive Status

- Click OneDrive icon in system tray  

Check status message:

- If **"Sync paused"** → likely cause identified  

---

### Step 3: Verify Network Connectivity

- Open browser and access a website  

If successful:
- Network is not the issue  

---

### Step 4: Identify Root Cause

If OneDrive shows paused:

- Syncing has been manually disabled  
- Files will not upload or update  

---

## Root Cause

OneDrive syncing was manually paused via the system tray.

This prevented files from being uploaded and synchronised with the cloud, resulting in pending files and no updates across devices.

---

## Resolution

### Step 1: Resume OneDrive Sync

- Click OneDrive icon  
- Select **Resume syncing**  

---

### Step 2: Monitor Sync Progress

- Confirm files begin uploading  
- Check for sync indicators (green tick)  

---

## Verification

After applying fix:

- Files sync successfully  
- Green tick appears on files  
- OneDrive status shows "Up to date"  
- Files accessible across devices  

---

## Notes

- OneDrive can appear active while sync is paused  
- Always check sync status before deeper troubleshooting  
- Sync issues are often user-triggered (paused, signed out)  
- This is a common Microsoft 365 support issue  

---

## Related Ticket

See: [Ticket 10 – OneDrive Not Syncing](../tickets/10-onedrive-not-syncing.md)