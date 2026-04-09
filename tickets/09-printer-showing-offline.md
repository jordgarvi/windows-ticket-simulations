# Ticket 09 – Printer Showing Offline

## Objective
Simulate an operational IT support scenario where a user is unable to print due to a printer appearing offline.

The goal is to investigate the issue using standard troubleshooting steps, identify the root cause, and restore printing functionality.

---

## Ticket Simulation

A user reported an issue when attempting to print documents required for daily work tasks.

---

### 📧 User Request

**From:** david.brown@company.com  
**To:** it.support@company.com  
**Subject:** Unable to Print – Printer Showing Offline  

Hi IT Support,

I am currently unable to print documents from my Windows 11 workstation. The printer appears to be offline, and any print jobs I send do not process.

This is preventing me from completing my daily tasks.

Please could you investigate this issue?

Kind regards,  
David Brown  
Finance Department  

---

### 🧾 Ticket Summary

**User:** David Brown  
**Department:** Finance  

**Reported Issues:**
- Unable to print documents  
- Printer showing as offline  
- Print jobs not processing  

---

📸 **Screenshot of simulated ticket request:**  
![](../images/printer-ticket.png)

---

---

## Environment

The issue was reproduced in a controlled lab environment to simulate a typical workstation setup.

- Operating System: Windows 11  
- Environment Type: Virtual Machine  
- Virtualisation Platform: Oracle VirtualBox  
- Printer Type: Microsoft Print to PDF  

📸 **System information (Windows 11):**  
![](../images/environment-system-info.png)

---

---

## Issue Recreation

To simulate the issue, the Windows Print Spooler service was manually stopped.

The Print Spooler service is responsible for managing print jobs and handling communication between applications and printing devices.

Stopping this service prevents print jobs from being processed, causing the printer to appear offline or unresponsive.

📸 **Print Spooler service stopped (service status: stopped):**  
![](../images/print-spooler-stopped.png)

---