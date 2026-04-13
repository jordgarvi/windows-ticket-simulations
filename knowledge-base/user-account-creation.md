# User Account Creation & Access Assignment (Windows)

## Issue

A user requires access to internal resources but does not yet have an account or appropriate permissions.

---

## Symptoms

- User cannot log in  
- User does not exist in system  
- User unable to access shared folders or resources  
- Access request raised by HR or management  

---

## Possible Causes

- User account not yet created  
- User not assigned to correct group  
- Missing folder or resource permissions  
- Incorrect access request details  

---

## Resolution Steps

### Step 1: Verify Request Authenticity
- Confirm the request comes from a trusted source (e.g. HR, manager)  
- Review request details (username, department, access requirements)  

---

### Step 2: Create User Account
- Open Run → `lusrmgr.msc`  
- Navigate to **Users**  
- Right-click → **New User…**  
- Enter username and temporary password  
- Create the account  

---

### Step 3: Assign User to Correct Group
- Navigate to **Groups**  
- Locate or create appropriate department group (e.g. Marketing)  
- Open group → **Add…**  
- Add the user account  
- Confirm membership  

---

### Step 4: Assign Folder / Resource Permissions
- Navigate to required folder (e.g. `C:\Shared\Marketing\assets`)  
- Right-click → **Properties → Security**  
- Click **Edit → Add**  
- Add the relevant group  
- Assign appropriate permissions (e.g. Modify, Read/Write)  
- Apply changes  

---

### Step 5: Test User Access
- Use **Run as different user** or test login  
- Navigate to the shared resource  
- Create or open a test file  
- Confirm access is working as expected  

---

## Verification

- User account exists in system  
- User is assigned to correct group  
- User can access required resources  
- Files can be created and opened successfully  

---

## Notes

- Always assign permissions via groups rather than individual users  
- Ensure temporary passwords are changed on first login  
- Follow least privilege principle when assigning access  

---

## Related Ticket

See: `../tickets/01-user-access-request.md`