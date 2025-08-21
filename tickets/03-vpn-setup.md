# Ticket 03 – VPN Setup Simulation

## Objective
Simulate a real-world scenario where IT sets up a VPN server to enable secure remote access for lab users. The purpose is to provision a working OpenVPN environment so future user requests for VPN access can be serviced.

---

## Pre-Checks
Before beginning, several validation steps were performed:

- VM network adapter set to **Bridged** mode and temporary VPN traffic allowed in Windows Firewall.  
- Verified UDP port **1194** was open.  
- Prepared PKI with server and client certificates.  
- Confirmed `.ovpn` client configuration file was available for later testing.  

**Screenshots:**  
- ![VM Network Adapter set to Bridged](../images/vm-network-adapter.png)  
- ![Windows Firewall VPN Rule](../images/firewall-vpn-rule.png)  
- ![PKI folders with certificates](../images/pki-issued-and-private-folders.png)  
- ![Server/Client Certificates](../images/openvpn-certificates-and-keys.png)  
- ![Client Configuration File](../images/openvpn-config-checked.png)  

---

## Investigation / Work

### 1. Install OpenVPN
- Downloaded OpenVPN installer from the official website.  
- Installed into `C:\Program Files\OpenVPN`.  

![OpenVPN Download Page](../images/openvpn.download-page.png)  

### 2. Configure Certificates with EasyRSA
- Downloaded EasyRSA (Windows 64-bit).  
- Generated server and client certificates/keys.  
- Copied them into `C:\Program Files\OpenVPN\config`.  

![EasyRSA Download Page](../images/esayrsawin64zip.downloadpage.png)  

### 3. Validate Configuration Files
- Placed `server.ovpn` and `client.ovpn` into correct config directories.  
- Edited both to confirm certificate/key paths were correct.  

![Server Config](../images/Notepad-open-with-server.ovpn.png)  
![Client Config](../images/Notepad-open-with-client.ovpn.png)  

### 4. Start OpenVPN Server
- Ran OpenVPN GUI as administrator.  
- Started the **server** instance successfully.  

![Server Connected](../images/server-now-connected-sign.png)  

### 5. Verify VPN Assignment
- Ran `ipconfig` and confirmed VPN adapter received IP `10.8.0.1`.  

![VPN IP Confirmation](../images/ipconfig-showing-VPNIP-(10.8.0.x).png)  

---

## Resolution
The VPN server was successfully configured and is now accepting client connections. The server has been assigned the internal VPN IP `10.8.0.1` and will be used to provision access for users.

---

## Verification
- OpenVPN GUI shows “Connected.”  
- IPConfig confirms VPN adapter address (`10.8.0.1`).  
- Certificates and keys are stored in the correct config folder.  

---

## Closure Notes
- Ticket **03 – VPN Setup** is resolved.  
- Lab now has a functioning VPN server.  
- Next ticket (`04-vpn-access-request.md`) will simulate a user request for VPN access and test client connectivity.
