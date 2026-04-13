# Windows Printer Showing Offline – Print Spooler Service

## Purpose

Provide a structured troubleshooting guide for resolving printer issues where the device appears offline or print jobs are not processing due to the Print Spooler service.

---

## Symptoms

Users may report:

- Printer showing as offline  
- Print jobs not processing  
- Documents stuck in queue  
- Unable to print documents  
- Printer visible but unresponsive  

---

## Common Causes

- Print Spooler service stopped  
- Corrupted print queue  
- Printer driver issues  
- Connectivity issues (network printers)  
- Windows service failure  

---

## Troubleshooting Steps

### Step 1: Reproduce the Issue

- Attempt to print a document  

If print job does not process:
- Issue confirmed  

---

### Step 2: Check Printer Status

- Open Settings → Printers & Scanners  
- Confirm printer is installed and selected  

If printer appears offline:
- Proceed to next step  

---

### Step 3: Review Print Queue

- Open print queue  
- Check for:
  - Stuck jobs  
  - No processing activity  

If queue is not processing:
- Possible service issue  

---

### Step 4: Check Print Spooler Service

- Open Run → `services.msc`  
- Locate **Print Spooler**  

Check status:

- If **Stopped** → likely cause identified  
- If **Running** → investigate further  

---

## Root Cause

The Print Spooler service is stopped.

This prevents Windows from managing print jobs and communicating with the printer, causing the printer to appear offline and preventing documents from being printed.

---

## Resolution

### Step 1: Start Print Spooler Service

- Open `services.msc`  
- Locate **Print Spooler**  
- Right-click → Start  

---

### Step 2: Restart Service (if required)

- Right-click → Restart  

---

### Step 3: Clear Print Queue (if needed)

- Stop Print Spooler  
- Navigate to:
  C:\Windows\System32\spool\PRINTERS  
- Delete all files  
- Restart Print Spooler  

---

## Verification

After applying fix:

- Print job processes successfully  
- Printer status shows online  
- Documents print or save correctly  

---

## Notes

- Print Spooler is critical for all print operations  
- Restarting the service resolves many common printing issues  
- Clearing the spool folder can fix stuck jobs  
- This is a common Tier 1 support issue  

---

## Related Ticket

See: [Ticket 09 – Printer Showing Offline](../tickets/09-printer-showing-offline.md)