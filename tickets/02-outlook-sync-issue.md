# Ticket 02 – Outlook Sync Issue (Updated Scenario)

## Objective
Originally, the goal was to simulate and troubleshoot a common Outlook synchronisation problem that prevents emails from sending or receiving correctly. The intention was to reproduce the issue, walk through common diagnostic steps, and restore normal mail flow.

During testing, limitations were encountered due to Microsoft’s newer account settings interface, which restricts direct access to certain mailbox configuration options without removing and re-adding the account. This made it impractical to fully reproduce the original scenario without disrupting live email service.

As a result, this ticket has been adapted to focus on:
- Documenting the intended troubleshooting process.
- Highlighting the obstacles faced due to UI and policy changes.
- Providing alternative remote-support methods that can be used when full local access is unavailable.

---

## Possible Causes
- Incorrect login credentials or expired password  
- Server outage or maintenance on Microsoft 365 / Exchange server  
- Corrupted offline Outlook cache (`.OST` file)  
- Network connectivity issues or firewall blocking ports  
- Large mailbox size causing sync delays or failures  
- Misconfigured account settings (IMAP/SMTP or Exchange)  
- Antivirus or security software interfering with Outlook  
- Outdated Outlook client or missing updates  
- Corrupt Outlook profile  
- **Restricted UI access in current Outlook versions** (newly added cause)

---
