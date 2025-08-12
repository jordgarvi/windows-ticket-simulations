# Ticket 02 – Outlook Sync Issue (Adapted Scenario)

## Objective

The original goal was to simulate and troubleshoot a common Outlook synchronization issue preventing emails from sending or receiving correctly. The aim was to reproduce the problem, walk through diagnostic steps, and restore normal mail flow.

During testing, limitations were encountered due to Microsoft’s updated account settings interface, which restricts direct access to mailbox configuration options without removing and re-adding the account. This prevented fully reproducing the original scenario without risking disruption to live email service.

As a result, this ticket has been adapted to focus on:  
- Documenting the intended troubleshooting process.  
- Highlighting obstacles due to UI and policy changes.  
- Providing alternative remote-support methods when full local access is unavailable.

---

## Possible Causes

- **Restricted UI access in current Outlook versions** (recently identified limitation)  
- Incorrect login credentials or expired password  
- Server outage or maintenance on Microsoft 365 / Exchange server  
- Corrupted offline Outlook cache (`.OST` file)  
- Network connectivity issues or firewall blocking ports  
- Large mailbox size causing sync delays or failures  
- Misconfigured account settings (IMAP/SMTP or Exchange)  
- Antivirus or security software interfering with Outlook  
- Outdated Outlook client or missing updates  
- Corrupt Outlook profile  

---

## 1. Problem Simulation

This step simulates a common issue faced by Tier 1 support staff:

Modern Microsoft Mail/Outlook apps on Windows 10/11 no longer provide access to mailbox sync settings or advanced account management options, limiting direct troubleshooting capabilities within the client.

---

### Steps Taken

- Used a free Microsoft Outlook.com test account in the Windows 11 Mail app.  
- Noted the absence of a **File** tab in the app UI.  
- Navigated to **Windows Settings → Email & accounts → selected the account → Manage**.  
- Observed only limited options available:  
  - Account description  
  - Buy Microsoft 365 subscription  
  - Import settings  
  - Remove account  
- No option to change mailbox sync settings or server details was present.

---

### Screenshots

- ![Outlook app UI showing no File tab](../images/01-no-file-tab.png)  
- ![Windows Settings account management page with limited options](../images/02-limited-account-options.png)  
- ![Manage account page inside the app with minimal options](../images/03-manage-account-minimal.png)  
- ![Additional manage account page showing minimal options](../images/03-manage-account-minimal-2.png)  

---

## Implications for Support

Due to these UI limitations, Tier 1 support staff cannot resolve sync issues by modifying server or sync settings locally in the app or Windows settings. Alternative troubleshooting methods or escalation to higher tiers are necessary.

---

## 2. Tier 1 Troubleshooting Path

This section outlines user-facing fixes that do not require admin privileges or advanced Outlook access.

1. **Confirm Internet Connectivity**  
   Verify an active internet connection by opening a website or running a ping test.  

2. **Check Microsoft 365 Service Status**  
   Visit [Microsoft 365 Service Health](https://status.office.com) to confirm no current outages affecting Outlook.  

3. **Verify Account vs. App Issue Using Outlook Web Access (OWA)**  
   Log into [Outlook Web Access](https://outlook.office.com) with user credentials. If mail works here, the issue likely lies in the desktop app.  

4. **Restart App and Device**  
   Close the Mail or Outlook app, restart Windows, then reopen the app and check syncing.  

5. **Remove and Re-add Email Account**  
   In the Mail app, navigate to **Settings → Manage Accounts → Select Account → Remove Account**, then add the account back using the appropriate account type (Microsoft 365/Outlook.com for Exchange or IMAP for basic setups).  

> **Note:** Modern Microsoft Mail/Outlook apps configure Microsoft 365/Outlook.com accounts automatically without exposing manual server settings.

6. **Confirm Email Flow Restoration**  
   Send and receive test emails to ensure syncing has resumed.

---

### Supporting Screenshots

- ![Internet check: browser open on working webpage](../images/04-internet-check.png)  
- ![Microsoft 365 Service Health page showing no issues](../images/05-m365-status.png)  
- ![Outlook Web Access inbox showing emails](../images/06-owa-success.png)  
- ![Mail or Outlook app main screen after restart](../images/07-app-restart.png)  
- ![Account removal screen in the Mail app](../images/08-remove-account.png)  
- ![Add account screen in the Mail app](../images/09-add-account.png)  
- ![Confirmation of successful email sync](../images/10-sync-success.png)  
