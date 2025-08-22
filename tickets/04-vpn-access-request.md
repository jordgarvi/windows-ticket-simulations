# Ticket 04 – VPN Access Request

## Objective
Simulate a real-world scenario where a user requests VPN access to connect to internal company resources while working remotely.  
The first step is to **verify and document the request**.

---

## Investigation & Action Plan

### Step 1: Verify the request
- Confirmed the VPN request came from a valid employee.  
- Request details were captured in a **mock VPN access request email** created for this simulation.  

📸 **Screenshot of request email (simulated):**  
![](../images/vpn-access-request-email.png)

---

## Mock Request (Simulated)

From: *user@company.com*  
Subject: **VPN Access Request – Sarah Connor**  

Hello IT,  

I am currently working from home and need to access the internal file server.  
Please enable VPN access for my account.  

**Details:**  
- Name: Sarah Connor  
- Username: sconnor  
- Device: Windows 11 Pro (corporate laptop)  
- Network: Home Wi-Fi  
- Purpose: Access to shared drive and CRM system  

Thank you,  
Sarah Connor  

---

## Step 2: Gather User Information

Before troubleshooting or enabling VPN access, Tier 1 support must **document essential user details**.  
This ensures the request is properly logged and can be verified against company policy.

---

### Actions Taken

1. **Created a User Info Form**
   - Opened Notepad and drafted a simple user information form with the following fields:
     ```
     OS:
     Username:
     Device Type:
     Network:
     Purpose:
     ```

2. **Saved the Form**
   - Saved the file as `vpn-user-details.txt` in the repo path:
     ```
     windows-ticket-simulations/tools/templates/
     ```

3. **Captured Blank Form**
   - Took a screenshot of the blank form template.  
   📸 **Screenshot:**  
   ![](../images/vpn-user-details-blank.png)

4. **Filled in User Details**
   - Used the mock email request (Step 1) to populate the form:  
     ```
     OS: Windows 11 Pro
     Username: sconnor
     Device Type: Corporate Laptop
     Network: Home Wi-Fi
     Purpose: Access to shared drive and CRM system
     ```

5. **Captured Completed Form**
   - Took a screenshot of the completed form with John Smith’s details.  
   📸 **Screenshot:**  
   ![](../images/vpn-user-details-filled.png)

---

### Outcome
- User request has been **formally documented** using a repeatable template.  
- Information will be used in the next step to validate the user against Active Directory and confirm VPN eligibility.

---

