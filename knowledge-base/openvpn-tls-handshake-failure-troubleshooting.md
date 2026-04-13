# OpenVPN TLS Handshake Failure Troubleshooting

## Purpose

Provide a structured troubleshooting guide for resolving OpenVPN TLS handshake failures and connection reset errors.

---

## Symptoms

Users may report:

- VPN connection fails to establish  
- Error: `TLS key negotiation failed to occur within 60 seconds`  
- Error: `Connection reset by peer (WSAECONNRESET)`  
- OpenVPN GUI shows activity but never connects  
- VPN appears to start but no traffic flows  

---

## Common Causes

- OpenVPN server not binding to correct port (UDP 1194)  
- TAP/Wintun adapter issues  
- Firewall blocking VPN traffic  
- Certificate/key mismatch  
- Incorrect client/server configuration  
- Network/NAT restrictions  
- Port already in use or blocked  

---

## Troubleshooting Steps

### Step 1: Verify Server is Listening on Port

Run:

netstat -an | find "1194"

Expected:
- UDP 1194 should be in LISTENING state  

If no output:
- Server is not properly running  
- Proceed to Step 2  

---

### Step 2: Check OpenVPN Service Status

- Open OpenVPN GUI as Administrator  
- Confirm server instance is running  
- Review logs for startup errors  

---

### Step 3: Validate TAP/Wintun Adapter

- Open Device Manager  
- Check Network Adapters  
- Confirm:
  - TAP-Windows Adapter or Wintun exists  
  - No warning symbols  

If issues found:
- Reinstall OpenVPN  
- Reinstall TAP adapter  

---

### Step 4: Verify Firewall Configuration

- Ensure UDP port 1194 is allowed  
- Check Windows Firewall inbound rules  
- Temporarily disable firewall (for testing only)  

---

### Step 5: Validate Certificates (PKI)

- Confirm:
  - Client certificate matches client key  
  - Server certificate matches server key  
  - CA certificate is consistent  

Optional validation:

openssl x509 -noout -modulus -in cert.crt | openssl md5  
openssl rsa -noout -modulus -in key.key | openssl md5  

Matching hashes confirm valid pair  

---

### Step 6: Validate Configuration Files

Check:

- Correct port (1194)  
- Matching protocol (UDP/TCP)  
- Correct certificate paths  
- Matching cipher settings  

---

### Step 7: Test Client Connectivity

- Attempt connection using `.ovpn` file  
- Observe logs for:
  - TLS handshake attempts  
  - UDP connection messages  

---

## Escalation Criteria

Escalate if:

- Server not binding to port despite correct config  
- TAP/Wintun adapter appears faulty  
- TLS errors persist after all checks  
- Suspected OS-level or driver issue  
- No resolution after full troubleshooting  

Escalation should include:

- OpenVPN logs  
- Netstat output  
- Configuration files  
- Description of steps already taken  

---

## Notes

- OpenVPN GUI may show “running” even if server failed to bind  
- TLS errors are often misleading — always verify port binding first  
- Driver-level issues (TAP/Wintun) are a common hidden cause  
- Not all VPN issues are resolvable at Tier 1/2 level  

---

## Related Ticket

See: [Ticket 04 – VPN Access Request](../tickets/04-vpn-access-request.md)