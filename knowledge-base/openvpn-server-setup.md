# OpenVPN Server Setup (Windows)

## Purpose

Configure an OpenVPN server to enable secure remote access for users.

---

## Prerequisites

- Windows system with administrative access  
- OpenVPN installed  
- EasyRSA available for certificate generation  
- Firewall access to allow VPN traffic (UDP 1194)  
- Network adapter configured (Bridged or appropriate mode)  

---

## Possible Issues if Misconfigured

- VPN server not starting  
- Clients unable to connect  
- No IP assigned to VPN adapter  
- Firewall blocking traffic  
- Certificate mismatch  

---

## Setup Steps

### Step 1: Install OpenVPN
- Download OpenVPN from official website  
- Install to default location (`C:\Program Files\OpenVPN`)  

---

### Step 2: Generate Certificates (EasyRSA)
- Download EasyRSA  
- Initialise PKI  
- Generate:
  - Server certificate  
  - Client certificate  
  - Private keys  

- Store files in:
  C:\Program Files\OpenVPN\config

---

### Step 3: Configure Server and Client Files
- Place `server.ovpn` in server config directory  
- Place `client.ovpn` for client use  
- Verify:
  - Certificate paths  
  - Key references  
  - Port configuration (UDP 1194)  

---

### Step 4: Configure Firewall
- Allow UDP port 1194  
- Create inbound rule if required  

---

### Step 5: Start OpenVPN Server
- Run OpenVPN GUI as Administrator  
- Start server instance  
- Confirm connection status shows Connected  

---

### Step 6: Verify VPN Adapter
- Open Command Prompt  
- Run:
  ipconfig
- Confirm VPN adapter has IP (e.g. 10.8.0.1)  

---

## Verification

- OpenVPN GUI shows active connection  
- VPN adapter assigned IP address  
- No errors in OpenVPN logs  
- Server ready to accept client connections  

---

## Notes

- Ensure certificates match between server and client  
- Firewall rules must allow VPN traffic  
- Bridged networking helps simulate real-world connectivity  
- Misconfigured paths are a common cause of failure  

---

## Related Ticket

See: [Ticket 03 – VPN Setup Simulation](../tickets/03-vpn-setup.md)