# First-Line Network Triage Checklist

## Objective
Provide a structured approach to diagnosing common network and connectivity issues in a first-line support environment.

---

## Step 1: Identify the Scope

- Is the issue affecting:
  - One user?
  - Multiple users?
  - Entire site?

- Ask:
  - "Are others experiencing the same issue?"
  - "When did the issue start?"

---

## Step 2: Check IP Configuration

Command:
ipconfig

Check for:
- Valid IPv4 address
- Default gateway present
- DNS servers assigned

Common issues:
- 169.254.x.x → DHCP failure
- Missing gateway → no internet access

---

## Step 3: Test Connectivity

Command:
ping 8.8.8.8

- Success → internet connectivity OK
- Failure → network or gateway issue

---

## Step 4: Test DNS Resolution

Command:
nslookup google.com

- If this fails but ping to 8.8.8.8 works → DNS issue

---

## Step 5: Trace Network Path (if needed)

Command:
tracert google.com

- Helps identify where connectivity drops

---

## Step 6: Check Local Network Status

- Network adapter enabled?
- Wi-Fi connected?
- Airplane mode off?
- Ethernet cable connected?

---

## Step 7: Basic Fix Actions

- ipconfig /release
- ipconfig /renew
- ipconfig /flushdns
- Restart network adapter
- Reboot system

---

## Step 8: Determine Escalation

Escalate if:
- Multiple users affected
- Suspected network infrastructure issue
- No resolution after basic troubleshooting
- Firewall/router/server issue suspected

---

## Outcome

This checklist is used across multiple ticket scenarios in this lab, including:
- No internet connectivity
- DNS resolution failures
- VPN-related connectivity issues