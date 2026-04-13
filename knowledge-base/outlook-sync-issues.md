# Outlook Not Syncing (Modern App Limitations & Workarounds)

## Issue

User reports that emails are not sending or receiving in Microsoft Outlook.

---

## Symptoms

- Emails not syncing  
- Messages not sending or receiving  
- Mailbox appears outdated  
- No clear error message  
- Limited settings available in Outlook app  

---

## Possible Causes

- Internet connectivity issues  
- Microsoft 365 service outage  
- Account authentication issues  
- Corrupted Outlook profile or cache  
- Application limitations (modern Outlook app)  
- Security or policy restrictions  

---

## Important Note (Modern Outlook Limitation)

Recent versions of Outlook for Windows and the Windows Mail app **do not expose advanced mailbox configuration options**.

This limits the ability of Tier 1 support to:
- Modify sync settings  
- Adjust server configurations  
- Perform advanced troubleshooting locally  

---

## Resolution Steps (Tier 1)

### Step 1: Confirm Internet Connectivity
- Open a web browser  
- Verify access to external websites  

---

### Step 2: Check Microsoft 365 Service Status
- Visit: https://status.office.com  
- Confirm no outages affecting Outlook  

---

### Step 3: Test via Outlook Web Access (OWA)
- Navigate to: https://outlook.office.com  
- Log in with user credentials  

👉 If email works in OWA:
- Issue is likely client-side  

---

### Step 4: Restart Application and Device
- Close Outlook  
- Restart system  
- Reopen application  

---

### Step 5: Remove and Re-add Account
- Go to **Settings → Accounts → Email & accounts**  
- Remove affected account  
- Re-add account using correct type  

---

### Step 6: Verify Email Sync
- Send test email  
- Confirm receipt  

---

## Alternative Workaround

If local application troubleshooting is limited:

👉 Use Outlook Web Access (OWA) as a temporary solution  

This allows full access to email without relying on the desktop application.

---

## Escalation

Escalate if:

- Issue persists after account reset  
- OWA also fails  
- Security or authentication issues are suspected  
- Access to backend configuration is required  

---

## Verification

- Emails send and receive successfully  
- Mailbox updates correctly  
- User confirms normal functionality  

---

## Notes

- Modern Outlook versions may restrict traditional troubleshooting methods  
- Tier 1 support should focus on:
  - Connectivity checks  
  - Account validation  
  - Web access verification  
- Deeper issues may require escalation to admin-level tools  

---

## Related Ticket

See: [Ticket 02 – Outlook Sync Issue](../tickets/02-outlook-sync-issue.md)