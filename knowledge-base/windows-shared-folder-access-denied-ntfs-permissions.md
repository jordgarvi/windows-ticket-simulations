# Windows Shared Folder Access Denied – NTFS Permissions

## Purpose

Provide a structured troubleshooting guide for resolving "Access Denied" errors when a user is unable to open a shared folder due to NTFS permission issues.

---

## Symptoms

Users may report:

- Unable to open shared folder  
- "Access Denied" error message  
- Folder is visible but cannot be accessed  
- Files inside folder cannot be opened  

---

## Common Causes

- Explicit deny permissions applied to user  
- Incorrect NTFS permissions  
- User not part of correct security group  
- Inheritance disabled or misconfigured  
- Conflicting permissions between groups  

---

## Troubleshooting Steps

### Step 1: Reproduce the Issue

- Log in as the affected user (or use "Run as different user")  
- Attempt to access the shared folder  

If access is denied:
- Issue confirmed  

---

### Step 2: Check Folder Security Permissions

- Right-click folder → Properties → Security tab  
- Review user and group permissions  

Look for:

- Explicit **Deny** entries  
- Missing **Allow** permissions  

If a deny entry exists:
- This is likely the cause  

---

### Step 3: Validate User Account

- Open `lusrmgr.msc`  
- Confirm user exists  
- Check group membership  

Ensure:

- User is part of correct access group  
- No conflicting group permissions  

---

### Step 4: Understand Permission Precedence

- NTFS permissions follow this rule:

**Deny overrides Allow**

If a user has both:
- Allow (via group)
- Deny (explicit or inherited)

👉 Access will be denied  

---

### Step 5: Identify Root Cause

Confirm whether:

- A deny permission is applied directly to user  
- A deny permission is inherited from a group  
- Permissions conflict exists  

---

## Root Cause

An explicit NTFS deny permission was applied to the user account, preventing access to the shared folder.

Because deny permissions take precedence over allow permissions, the user was blocked from accessing the folder despite it being visible.

---

## Resolution

### Step 1: Remove Deny Permission

- Open folder → Properties → Security  
- Select affected user  
- Remove **Deny** entry  

---

### Step 2: Apply Correct Permissions

- Ensure user or group has appropriate access:
  - Read  
  - Modify (if required)  

---

### Step 3: Use Groups (Best Practice)

- Assign permissions to groups instead of individual users  
- Add user to correct group  

---

## Verification

After applying fix:

- Log in as affected user  
- Open shared folder  
- Confirm:
  - Folder opens successfully  
  - Files are visible  
  - Files can be opened  

---

## Notes

- Folder visibility does not guarantee access  
- Always check NTFS permissions before share permissions  
- Deny permissions should be used cautiously  
- Group-based access control is preferred over user-level permissions  
- Always test using the affected user account  

---

## Related Ticket

See: [Ticket 07 – User Cannot Access Shared Folder](../tickets/07-user-cannot-access-shared-folder.md)