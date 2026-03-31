## Ticket Simulation

A user reported being unable to access a shared folder required for their daily work.

**User:** Emma Wilson  
**Department:** Finance  

**Reported Issues:**
- Unable to open shared folder
- Receiving "Access Denied" error
- Folder visible but not accessible

📸 **Screenshot of simulated ticket request:**  
![](../images/shared-folder-ticket.png)

---

## Environment

The issue was reproduced in a controlled lab environment to simulate a real-world workstation setup.

- Operating System: Windows 11
- Environment Type: Virtual Machine
- Virtualisation Platform: Oracle VirtualBox
- User Configuration: Local user accounts
- File Access Method: Local shared folder simulation

📸 **System information (Windows 11):**  
![](../images/environment-system-info.png)

---

## Issue Recreation

To simulate the issue, a shared folder was created in a common directory to represent a shared resource environment.

📸 **Shared folder created for testing:**  
![](../images/shared-folder-created.png)

A test user account was then configured for access testing.

Access to the folder was restricted by applying explicit deny permissions to the test user.

This resulted in the user being able to see the folder but not open it.

📸 **Test user account created for simulation:**  
![](../images/shared-folder-user-created.png)

📸 **Folder permissions showing denied access:**  
![](../images/shared-folder-permissions-denied.png)

---

## Investigation & Action Plan

### Step 1: Reproduce the Reported Issue

The issue was reproduced by signing in as the affected user and attempting to open the shared folder.

The folder was visible, but access was denied when the user attempted to open it.

This confirmed that the issue was related to permissions rather than folder visibility.

📸 **Access denied message when opening shared folder:**  
![](../images/shared-folder-access-denied.png)

---

### Step 2: Review Folder Security Permissions

The folder's security settings were reviewed to identify whether the affected user had the appropriate permissions.

The security tab showed that the test user had explicit deny permissions applied to the folder.

This indicated that access was being blocked by NTFS permissions.

📸 **Security settings showing denied permissions:**  
![](../images/shared-folder-security-tab.png)

---

