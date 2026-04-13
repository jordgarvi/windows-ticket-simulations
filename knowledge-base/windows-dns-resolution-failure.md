# Windows DNS Resolution Failure

## Purpose

Provide a structured troubleshooting guide for resolving DNS resolution failures on a Windows system where general network connectivity is still functioning.

---

## Symptoms

Users may report:

- Websites not loading  
- Outlook unable to connect  
- Microsoft Teams showing disconnected  
- Network status shows connected  
- Internet access appears partially functional  

---

## Common Causes

- Incorrect DNS server configuration  
- Invalid static IPv4 DNS settings  
- DHCP configuration issue  
- DNS cache conflicts  
- IPv6 fallback masking IPv4 DNS problems  
- ISP or upstream DNS outage  

---

## Troubleshooting Steps

### Step 1: Check IP Configuration

Run:

ipconfig /all

Verify:

- Valid IPv4 address  
- Default gateway present  
- DNS server entries appear correct  

If DNS server is invalid or unexpected:
- Proceed to DNS testing  

---

### Step 2: Test General Network Connectivity

Run:

ping 8.8.8.8

If successful:
- Internet connectivity is working  
- Problem is likely not general network access  

If unsuccessful:
- Investigate broader connectivity issue before focusing on DNS  

---

### Step 3: Test DNS Resolution

Run:

ping google.com

If this fails while IP-based ping succeeds:
- DNS resolution is likely failing  

---

### Step 4: Confirm with NSLookup

Run:

nslookup google.com

If lookup fails:
- DNS server is not responding correctly  
- DNS issue confirmed  

---

### Step 5: Clear DNS Cache

Run:

ipconfig /flushdns

This ensures the system is not using previously cached domain entries.

---

### Step 6: Re-test DNS Resolution

Repeat:

ping google.com  
nslookup google.com

If domain resolution still succeeds unexpectedly despite invalid IPv4 DNS settings:
- Proceed to Step 7  

---

### Step 7: Check for IPv6 Fallback

Review the network adapter configuration and confirm whether IPv6 is enabled.

If IPv6 remains enabled:
- The system may continue resolving DNS through IPv6
- This can mask the underlying IPv4 DNS issue  

---

### Step 8: Disable IPv6 Temporarily

Disable IPv6 on the adapter and repeat DNS tests.

If domain resolution now fails:
- IPv6 fallback was masking the DNS problem  
- Root cause confirmed  

---

### Step 9: Correct DNS Server Configuration

Update IPv4 DNS settings with valid DNS servers, for example:

- Preferred DNS server: 8.8.8.8  
- Alternate DNS server: 1.1.1.1  

Re-enable IPv6 if required after testing.

---

## Root Cause

The issue was caused by an incorrect IPv4 DNS server configuration.

Although the system maintained valid network connectivity, it could not resolve domain names through the configured DNS server.

IPv6 remained enabled and allowed DNS resolution to continue through an alternate path, masking the issue until IPv6 was temporarily disabled.

---

## Verification

After applying the correct DNS settings:

- `ping 8.8.8.8` succeeds  
- `ping google.com` succeeds  
- `nslookup google.com` returns a valid result  
- Websites load correctly  
- Online applications reconnect normally  

---

## Notes

- Successful IP-based communication does not confirm DNS is working  
- DNS should always be tested separately from general connectivity  
- IPv6 can mask IPv4 DNS issues during troubleshooting  
- Layered troubleshooting is essential when symptoms appear inconsistent  

---

## Related Ticket

See: [Ticket 06 – DNS Resolution Failure](../tickets/06-dns-resolution-failure.md)