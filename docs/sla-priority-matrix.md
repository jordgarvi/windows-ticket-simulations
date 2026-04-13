# SLA & Priority Matrix – IT Support

## Purpose

This document defines how incidents are prioritised and handled within a service desk environment.

It ensures consistent response times, structured escalation, and alignment with business impact.

---

## Priority Levels

| Priority | Description | Business Impact | Example |
|----------|------------|----------------|--------|
| P1 – Critical | Service unavailable | Entire organisation impacted | Network outage, server down |
| P2 – High | Major functionality affected | Department unable to work | No internet, VPN failure |
| P3 – Medium | Partial impact | Single user or limited issue | Printer offline, shared folder access |
| P4 – Low | Minor issue | Minimal disruption | OneDrive sync paused, UI issue |

---

## Response & Resolution Targets

| Priority | Response Time | Resolution Target |
|----------|--------------|------------------|
| P1 | 15 minutes | 4 hours |
| P2 | 1 hour | 8 hours |
| P3 | 4 hours | 24 hours |
| P4 | 1 business day | 3 business days |

---

## Priority Mapping to Lab Tickets

| Ticket | Issue | Priority |
|--------|------|----------|
| 05 | No Internet Connectivity | P2 |
| 06 | DNS Resolution Failure | P2 |
| 04 | VPN Access Failure | P2 |
| 07 | Shared Folder Access Denied | P3 |
| 09 | Printer Showing Offline | P3 |
| 01 | User Access Request | P3 |
| 10 | OneDrive Not Syncing | P4 |
| 08 | Outlook Won’t Open | P4 |
| 02 | Outlook Sync Issue (Adapted) | P4 |

---

## Escalation Guidelines

- **P1:** Immediate escalation to senior engineers or infrastructure team  
- **P2:** Escalate if not resolved within target timeframe  
- **P3:** Follow standard troubleshooting workflow  
- **P4:** Resolve during normal service operations  

---

## Notes

- Priority is based on **impact + urgency**, not just technical complexity  
- Clear communication with users is essential at all stages  
- Repeat issues should be documented in the knowledge base  

---

## Summary

This SLA framework reflects standard service desk practices and supports structured incident handling, prioritisation, and escalation.