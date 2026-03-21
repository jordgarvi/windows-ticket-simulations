## Ticket Simulation

A user reported issues accessing internet-based services despite appearing to be connected to the network.

**User:** Sarah Williams  
**Department:** Marketing  

**Reported Issues:**
- Websites not loading
- Outlook unable to connect
- Microsoft Teams showing disconnected
- Network status shows connected

📸 **Screenshot of simulated ticket request:**  
![](../images/dns-ticket.png)

---

## Environment

The issue was reproduced in a controlled lab environment to simulate a real-world workstation setup.

- Operating System: Windows 11
- Environment Type: Virtual Machine
- Virtualisation Platform: Oracle VirtualBox
- Network Configuration: NAT

📸 **System information (Windows 11):**  
![](../images/environment-system-info.png)

---

## Issue Recreation

To simulate the issue, the system's DNS configuration was manually modified.

The IPv4 settings were changed from automatic (DHCP) to a static DNS configuration using an invalid DNS server address.

This results in the system being able to connect to the network, but unable to resolve domain names.

📸 **IPv4 configuration with incorrect DNS server:**  
![](../images/dns-ipv4-settings-broken.png)

📸 **Network adapter status (connected):**  
![](../images/dns-adapter-active.png)

---

### Additional Investigation: DNS Still Resolving Despite Incorrect Configuration

During testing, the system continued to successfully resolve domain names despite being configured with an invalid DNS server.

This behaviour was unexpected and required further investigation.

📸 **Initial DNS configuration with invalid server:**  
![](../images/second-dns-break.png)

---

### Step 5: Verify DNS Cache

The DNS cache was cleared to ensure no previously resolved domain entries were being used.

    ipconfig /flushdns

📸 **DNS cache successfully flushed:**  
![](../images/flush-dns.png)

---

### Step 6: Re-test DNS Resolution

After clearing the cache, domain resolution was tested again.

Despite the incorrect DNS configuration, domain names were still resolving successfully.

📸 **DNS still resolving unexpectedly:**  
![](../images/dns-still-active.png)

---

### Step 7: Identify Possible Cause (IPv6 Fallback)

Further investigation identified that IPv6 was still enabled on the network adapter.

This can allow the system to bypass the configured IPv4 DNS server and use IPv6 DNS resolution instead.

---

### Step 8: Disable IPv6

IPv6 was disabled on the network adapter to ensure all DNS queries were forced through the IPv4 configuration.

📸 **IPv6 disabled on network adapter:**  
![](../images/ipv6-unchecked.png)

---

### Step 9: Re-test DNS Resolution After Disabling IPv6

After disabling IPv6, DNS resolution was tested again.

The system was now unable to resolve domain names, confirming that the issue was correctly reproduced.

📸 **Ping failure to domain (DNS not resolving):**  
![](../images/bbc_openai-ping-fail.png)

📸 **nslookup confirming DNS failure:**  
![](../images/nslookup-bbc-fail.png)

---