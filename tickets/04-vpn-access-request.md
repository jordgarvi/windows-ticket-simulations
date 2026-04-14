# Ticket 04 – VPN Access Request – TLS Handshake Failure (Escalated)

## Incident Logging

- **Ticket ID:** 0004-VPN-AR  
- **Date Reported:** 22-07-2025  
- **Reported by:** User `s.connor`  
- **Channel:** Email to IT Support (simulated lab scenario)  

---

## Incident Details

- **Priority:** P2 – High  
- **Impact:** User unable to establish VPN connection, preventing access to internal resources  
- **Urgency:** High  

(See SLA: [SLA & Priority Matrix](../docs/sla-priority-matrix.md))

---

## Issue Summary

User `s.connor` requested VPN access to internal lab resources using the OpenVPN platform built in **Ticket 03 – VPN Setup Simulation**.

A VPN profile was created and deployed to the user, but every connection attempt failed with **TLS handshake errors** and `WSAECONNRESET` messages. Despite multiple attempts, the tunnel never fully established and remained unstable.

This ticket demonstrates:

- Handling a VPN access request  
- Structured troubleshooting and validation  
- Identifying limits of Tier 1/2 troubleshooting  
- Proper escalation without forcing resolution  

---

## Environment

- **Client OS:** Windows 11 Pro  
- **VPN Software:** OpenVPN GUI  
- **Server:** OpenVPN server on Windows  
- **Network:** Home Wi-Fi → NAT router → VPN server  
- **PKI:** EasyRSA-based CA, server certificate, client certificates (`client1`, `sconnor`)  

---

## Step 1 – Receive & Verify Request

Simulated a VPN access request via email from `s.connor`.

![vpn-access-request-email](../images/vpn-access-request-email.png)

Captured key request details:

    OS: Windows 11 Pro
    Username: sconnor
    Device Type: Corporate Laptop
    Network: Home Wi-Fi
    Purpose: Access to shared drive and CRM system

![vpn-user-details-blank](../images/vpn-user-details-blank.png)  
![vpn-user-details-filled](../images/vpn-user-details-filled.png)

**Outcome:** Request validated and documented.

---

## Step 2 – Initial Failure Analysis

Connection attempts using both `client1` and `sconnor` profiles failed with:

- `TLS Error: TLS key negotiation failed to occur within 60 seconds`  
- `read UDPv4: Connection reset by peer (WSAECONNRESET)`  

At the same time:

- OpenVPN GUI indicated the server was running  
- No process was listening on UDP 1194  

Command used:

    netstat -an | find "1194"

This created a contradiction:

> The GUI reported the server as running, but no active port binding existed.

---

## Step 3 – PKI & Certificate Verification

To eliminate certificate-related issues, the PKI was validated.

**Actions performed:**

- Built Certificate Authority (CA)  
- Initialised PKI  
- Generated server and client certificates  
- Verified modulus and MD5 hash matches  

**Screenshots:**

![Build CA](../images/Build-the-Certificate-Authority-CA.png)  
![Initialise PKI](../images/Initialise-the-PKI-folder.png)  
![PKI PowerShell](../images/Initialise-the-PKI-powershell.png)  
![Modulus Match](../images/modulusofclient1.crtexactlymatchesclient1.key.png)  
![MD5 Check](../images/MD5hashesoutput-whichhadconflict.png)

**Conclusion:** PKI configuration valid.

---

## Step 4 – Server Status & Port Binding

Checked whether OpenVPN was binding to UDP port 1194.

    netstat -an | find "1194"

![netstat-no-output](../images/netstat-anfind1194-not-producing-anything.png)

**Findings:**

- No process bound to UDP 1194  
- GUI falsely indicated server startup  
- Likely driver or OS-level failure  

**Additional checks:**

![Network Adapters](../images/networkadapters-indevicemanager.png)  
![Verify TAP/Wintun](../images/verify-tap.wintun.png)  
![Adapter Warning](../images/cross-next-to-wiretap-adapter.png)  
![Config Folder](../images/ProgramFiles.OpenVPN.config.-screenshot.png)

**Conclusion:** VPN server not binding due to adapter/driver issue.

---

## Step 5 – Client Configuration Validation

Validated client configuration:

- Rebuilt `.ovpn` files  
- Synced cipher settings  
- Verified certificate paths  
- Confirmed file readability  

**Screenshots:**

![Server Config](../images/Notepad-open-with-server.ovpn.png)  
![Client Config](../images/Notepad-open-with-client.ovpn.png)  
![User Config Folder](../images/Users.Jordan.OpenVPN.config.png)  
![Client Created](../images/vpn-client-config-created.png)  
![Client Import](../images/vpn-client-import.png)

Despite valid configuration:

- TLS negotiation failed  
- Handshake never completed  

![UDP Sequence](../images/UDPv4linklocal-sequencecomplete.png)

**Conclusion:** Issue remains server-side.

---

## Step 6 – Escalation Decision

Completed:

- Request validation  
- Environment checks  
- PKI validation  
- Port binding analysis  
- Driver inspection  
- Client rebuild  
- Multiple connection attempts  

However:

- No binding to UDP 1194  
- Persistent TLS failures  
- Likely OS/driver-level issue  

**Action taken:**

> Escalated to Network/Infrastructure team for further investigation

---

## Current Status

- **User VPN access:** Failing  
- **Root cause:** Likely TAP/Wintun or OS-level issue  
- **Outcome:** Escalated  

---

## Lessons Learned

- Some issues exceed Tier 1/2 scope — this is expected  
- Documentation remains critical even when unresolved  
- TLS issues require validation across:
  - PKI  
  - Port binding  
  - Firewall  
  - Network drivers  
  - OS-level logs  
- Knowing when to escalate is essential  

---

## Tools Used

- EasyRSA  
- PowerShell (`netstat`)  
- Device Manager  
- OpenVPN GUI  
- Notepad  
- Windows Event Viewer  

---

> **Note:**  
> This ticket is intentionally unresolved and demonstrates correct escalation procedures.

---

## Related Knowledge Base Article

See: [OpenVPN TLS Handshake Failure Troubleshooting](../knowledge-base/openvpn-tls-handshake-failure-troubleshooting.md)