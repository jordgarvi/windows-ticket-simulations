# Ticket 05 – No Internet Connectivity

## Objective
Simulate a real-world scenario where a user reports no internet connectivity on a Windows 11 workstation. 

The goal is to investigate the issue using standard troubleshooting steps, identify the root cause, and restore connectivity.

---

## Ticket Simulation

A user reported an issue with internet connectivity affecting multiple business applications.

**User:** John Smith  
**Department:** Sales  

**Reported Issues:**
- Websites not loading
- Outlook unable to connect
- Microsoft Teams showing offline

📸 **Screenshot of simulated ticket request:**  
![](../images/no-internet-ticket.png)

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

To simulate the issue, the system's network configuration was manually modified.

The IPv4 settings were changed from automatic (DHCP) to a static configuration, and the default gateway was intentionally removed.

This results in the system retaining a valid IP address while being unable to route traffic outside of the local network.

📸 **IPv4 configuration with missing default gateway:**  
![](../images/no-internet-ipv4-no-gateway.png)

📸 **Network adapter status (enabled):**  
![](../images/no-internet-adapter-active.png)