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