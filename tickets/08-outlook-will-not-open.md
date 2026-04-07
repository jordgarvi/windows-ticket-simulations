# Ticket 08 – Outlook Won’t Open (Startup Failure)

## Objective
Simulate a real-world scenario where Microsoft Outlook fails to open due to a problematic add-in.

The goal is to investigate the issue using standard troubleshooting steps, identify the root cause, and restore normal functionality.

---

## Ticket Simulation

A user reported issues accessing email through Microsoft Outlook.

**User:** Sarah Williams  
**Department:** Marketing  

**Reported Issues:**
- Outlook not opening
- Application briefly appears then closes
- Unable to access emails

📸 **Screenshot of simulated ticket request:**  
![](../images/outlook-ticket.png)

---

## Environment

The issue was reproduced in a controlled lab environment to simulate a real-world workstation setup.

- Operating System: Windows 11
- Environment Type: Virtual Machine
- Virtualisation Platform: Oracle VirtualBox
- Application: Microsoft Outlook (Desktop)

📸 **System information (Windows 11):**  
![](../images/environment-system-info.png)

---

---

## Issue Recreation (Adapted Scenario)

The original objective was to simulate an Outlook startup failure caused by a problematic add-in.

In a typical enterprise environment, this would involve enabling or isolating Outlook add-ins through the application settings to reproduce a startup issue.

During testing, it was observed that the installed Outlook version uses the newer interface, which does not expose the same add-in management options as the classic desktop version.

This prevented full recreation of the add-in failure scenario using the standard method.

📸 **Outlook settings interface (add-in options not available):**  
![](../images/outlook-new-interface-settings.png)

As a result, the scenario was adapted to focus on the expected troubleshooting workflow used when Outlook fails to open.