# Windows No Internet Connectivity – Missing Default Gateway

## Purpose

Provide a structured troubleshooting guide for resolving internet connectivity issues caused by a missing or incorrect default gateway configuration.

---

## Symptoms

Users may report:

- Websites not loading  
- Outlook unable to connect  
- Microsoft Teams showing offline  
- System appears connected to network but has no internet access  

---

## Common Causes

- Missing default gateway  
- Incorrect static IP configuration  
- DHCP misconfiguration  
- Network adapter settings manually altered  
- Incorrect subnet configuration  

---

## Troubleshooting Steps

### Step 1: Check IP Configuration

Run:

ipconfig

Verify:

- IP address is present  
- Default gateway is listed  

If default gateway is missing:
- Likely cause identified → proceed to resolution  

---

### Step 2: Test Connectivity to Gateway

Run:

ping <gateway-ip>

If request fails:
- System cannot reach local network gateway  

---

### Step 3: Test External Connectivity

Run:

ping 8.8.8.8

If request fails:
- No internet connectivity beyond local network  

---

### Step 4: Test DNS Resolution

Run:

ping google.com

If request fails:
- DNS resolution failing (likely due to no connectivity)  

---

## Root Cause

The system does not have a default gateway configured.

Without a default gateway, the system cannot route traffic outside of the local network, resulting in no internet access.

---

## Resolution

### Option 1: Restore DHCP (Recommended)

- Open Network Settings  
- Navigate to IPv4 settings  
- Set configuration to **Automatic (DHCP)**  

---

### Option 2: Manually Configure Gateway

- Open IPv4 settings  
- Enter correct:
  - IP address  
  - Subnet mask  
  - Default gateway  

---

## Verification

After applying fix:

- Run:

ping 8.8.8.8

- Confirm successful replies  

- Test:

ping google.com

- Confirm DNS resolution  

- Open browser and verify internet access  

---

## Notes

- A valid IP address alone does not guarantee internet access  
- The default gateway is required for external communication  
- This issue is common when switching from DHCP to static IP  
- Always verify gateway before investigating DNS or firewall issues  

---

## Related Ticket

See: [Ticket 05 – No Internet Connectivity](../tickets/05-no-internet-connectivity.md)