# Password Reset & MFA Lockout

## Purpose

Provide a structured first-line troubleshooting guide for resolving user account lockouts, password reset issues, and Microsoft 365 authentication problems.

---

## Symptoms

Users may report:

- Password rejected during sign-in  
- Account locked after multiple failed attempts  
- Repeated authentication prompts  
- Unable to access Outlook, Teams, or Microsoft 365 services  
- MFA prompts failing or not appearing  
- Microsoft Authenticator not accepting approval requests  

---

## Common Causes

| Cause | Description |
|---|---|
| Incorrect password attempts | Multiple failed sign-ins triggering account lockout |
| Forgotten password | User unable to authenticate successfully |
| MFA re-authentication required | Password change invalidating existing session |
| Authenticator mismatch | Device registration or approval issue |
| Expired authentication session | User session requiring fresh sign-in |
| Account lockout policy | Security policy locking account after failed attempts |

---

## Troubleshooting Steps

### Step 1: Verify User Identity

Before making account changes:

- Confirm user identity  
- Verify request authenticity  
- Confirm request originates from approved support channels  

This helps reduce the risk of unauthorised password reset requests or social engineering attempts.

---

### Step 2: Review Account Status

Using Local Users and Groups (`lusrmgr.msc`) or the relevant account management platform:

- Confirm account exists  
- Review account status  
- Check for account lockout condition  
- Review recent failed authentication attempts  

---

### Step 3: Reset Password

If required:

- Reset the user password securely  
- Communicate temporary credentials using approved methods  
- Confirm the account is accessible following reset  

Be aware that Windows may display warnings relating to protected user data during password reset operations.

---

### Step 4: Review MFA & Authentication State

If authentication prompts continue after password reset:

- Verify user sign-in session  
- Confirm Microsoft Authenticator is functioning correctly  
- Re-authenticate Microsoft 365 account if required  
- Guide user through MFA re-registration if necessary  

---

### Step 5: Verify Resolution

Confirm:

- User successfully signs in  
- Outlook and Teams accessible  
- MFA functioning correctly  
- No further lockout behaviour observed  

---

## Escalation Guidance

Escalate to Tier 2 or Security teams if:

- Multiple accounts become locked simultaneously  
- User reports unexpected MFA prompts  
- Suspicious authentication behaviour identified  
- Repeated lockouts continue after password reset  
- Authentication failures persist despite successful password reset  

---

## Security Considerations

Authentication issues may indicate a standard password problem, but they can also represent potential account compromise attempts.

Indicators of suspicious behaviour may include:

- User denying they initiated password changes  
- Unexpected MFA prompts  
- Repeated authentication failures outside normal activity patterns  
- Lockouts occurring immediately after password reset  

If suspicious behaviour is identified, escalate in accordance with security procedures rather than continuing with standard password reset actions.

---

## Related Ticket

See: [Ticket 11 – Password Reset & MFA Lockout](../tickets/11-password-reset-mfa-lockout.md)