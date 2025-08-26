# Ticket 04 – VPN Access Request

## Objective
Simulate a real-world scenario where a user requests VPN access to internal company resources.  
Document the investigation, troubleshooting steps, and current status with a methodical approach suitable for a Tier 1 support portfolio.

---

## Step 1: Receive & Verify VPN Access Request
- **Action:** Confirmed VPN request came from a valid employee (mock email created for simulation).  
- **Reasoning:** Always verify user identity before performing any network configuration.

![](../images/vpn-access-request-email.png)

- **Outcome:** Request confirmed; details captured for further investigation.

---

## Step 2: Gather User Information
- **Action:** Created a User Info Form to log essential details from the request.  

```
OS: Windows 11 Pro
Username: sconnor
Device Type: Corporate Laptop
Network: Home Wi-Fi
Purpose: Access to shared drive and CRM system
```

- **Action:** Saved as `vpn-user-details.txt` in `windows-ticket-simulations/tools/templates/`.  
- **Screenshot of blank form:**  
![](../images/vpn-user-details-blank.png)

- **Action:** Populated the form using the mock request details.  
- **Screenshot of filled form:**  
![](../images/vpn-user-details-filled.png)

- **Outcome:** All user details documented for verification and troubleshooting.

---

## Step 3: Verify Certificate Authority & PKI
- **Action:** Built CA using EasyRSA.  
- **Screenshot:**  
![](../images/Build-the-Certificate-Authority-CA.png)

- **Action:** Initialised PKI folder and confirmed structure.  
- **Screenshot:**  
![](../images/Initialise-the-PKI-folder.png)

- **Action:** Ran PowerShell to initialise PKI environment.  
- **Screenshot:**  
![](../images/Initialise-the-PKI-powershell.png)

- **Action:** Verified `client1.crt` and `sconnor.crt` against `ca.crt` using OpenSSL commands.  
- **Screenshot (modulus match):**  
![](../images/modulusofclient1.crtexactlymatchesclient1.key.png)  
- **Screenshot (MD5 hash output):**  
![](../images/MD5hashesoutput-whichhadconflict.png)

- **Outcome:** Certificates correctly generated and verified. PKI structure confirmed. Ready for server configuration.

---

## Step 4: VPN Server Configuration & Verification

- **Action:** Configured `server.ovpn` on lab VM with correct CA, server certificate/key, DH parameters, and subnet settings.  

- **Action:** Attempted to verify if the server was listening on port 1194 using `netstat -an | find "1194"`.  

- **Observation:** The command produced **no output**, meaning nothing is currently bound to port 1194.  
  This suggests the OpenVPN server is either not running correctly, not binding to the expected port, or blocked by firewall/security policies.  

- **Screenshot:**  
![](../images/netstat-anfind1194-not-producing-anything.png)

- **Next Steps:**

1. Re-check that the OpenVPN service is running on the Windows VM.
2. Ensure the server configuration (`server.ovpn`) is located in the correct directory (`C:\Program Files\OpenVPN\config`).
3. Confirm Windows Firewall allows inbound UDP on port 1194.
4. Re-run `netstat -an | find "1194"` after restarting the OpenVPN service to verify if it is now listening.

---

## Step 5: Check Client Network Adapters
- **Action:** Checked Device Manager for TAP-Windows adapters.  
- **Screenshot:**  
![](../images/networkadapters-indevicemanager.png)

- **Action:** Verified TAP adapter in OpenVPN GUI (`wintun` driver).  
- **Screenshot:**  
![](../images/verify-tap.wintun.png)

- **Action:** Checked for any conflicts with other network adapters.  
- **Screenshot:**  
![](../images/cross-next-to-wiretap-adapter.png)

- **Outcome:** TAP adapter correctly installed, no conflicts found.

---

## Step 6: Configure & Test VPN Clients
- **Action:** Created `client1.ovpn` and `sconnor.ovpn` with CA, client cert/key, data-ciphers AES-256-CBC, no TLS-auth.  
- **Action:** Imported configuration into OpenVPN GUI.  
- **Screenshot:**  
![](../images/vpn-client-config-created.png)  
![](../images/vpn-client-import.png)

- **Action:** Attempted connection; observed UDP connection resets (WSAECONNRESET).  

- **Outcome:** Server functional but client connections unstable; further investigation needed on firewall/antivirus/router.

---

## Step 7: Summary / Current Status
- Server is confirmed running and reachable on UDP port 1194.  
- PKI and certificates verified; no mismatch.  
- TAP adapter present and functional.  
- VPN clients (`client1` and `sconnor`) fail to maintain stable UDP connection.  

**Next Steps:**

1. Check client-side firewall or antivirus restrictions.  
2. Confirm home router allows UDP 1194.  
3. Test with alternative Windows client or VPN software.  




