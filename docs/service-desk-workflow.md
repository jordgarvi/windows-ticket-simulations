# Service Desk Workflow

This document outlines the structured approach used to manage and resolve IT support tickets within this repository.

The workflow reflects standard service desk practices, including ticket intake, prioritisation, investigation, resolution, and escalation.

---

## 1. Ticket Intake & Logging

All issues are logged with clear and consistent information to ensure accurate tracking and efficient handling.

Each ticket includes:
- User details (name, department)
- Description of the issue
- Affected systems or applications
- Business impact

---

## 2. Categorisation

Tickets are categorised to support routing and prioritisation.

Typical categories include:
- Access / Permissions  
- Microsoft 365 / Applications  
- Networking / Connectivity  
- Devices / Hardware  
- System Performance  

---

## 3. Prioritisation (SLA-Based)

Tickets are assigned a priority based on **impact** and **urgency**:

- **P1 – Critical**  
  Full loss of service or business-critical functionality  

- **P2 – High**  
  Major functionality impacted with no immediate workaround  

- **P3 – Medium**  
  Limited impact affecting a single user or non-critical function  

- **P4 – Low**  
  Minor issues or service requests  

SLA targets are applied based on priority.

👉 See: [SLA & Priority Matrix](sla-priority-matrix.md)

---

## 4. Initial Assessment

The first stage of investigation focuses on understanding the scope of the issue:

- Is it affecting one user or multiple users?
- Is the issue isolated or widespread?
- Is the system, network, or application impacted?

This helps determine the likely fault domain and guides troubleshooting.

---

## 5. Investigation & Troubleshooting

A structured troubleshooting approach is used:

- Reproduce the issue  
- Check basic system and network status  
- Use diagnostic tools (e.g. `ipconfig`, `ping`, `nslookup`)  
- Review system settings, services, and configurations  
- Eliminate potential causes step-by-step  

All actions are documented clearly within the ticket.

---

## 6. Resolution

Once the root cause is identified:

- Apply the appropriate fix  
- Restore normal functionality  
- Ensure changes are safe and appropriate  

Examples:
- Correcting configuration settings  
- Restarting services  
- Adjusting permissions  
- Reconfiguring applications  

---

## 7. Verification

After resolution:

- Confirm the issue is fully resolved  
- Test affected functionality  
- Validate from the user perspective where applicable  

This ensures the fix is effective and complete.

---

## 8. Documentation

Each ticket includes structured documentation:

- Summary of the issue  
- Steps taken during investigation  
- Root cause  
- Resolution  
- Verification results  

This supports knowledge sharing and future troubleshooting.

---

## 9. Knowledge Base Integration

Where issues are repeatable:

- A corresponding knowledge base article is created  
- Tickets link to KB articles for standardised solutions  

👉 See: `/knowledge-base/`

---

## 10. Escalation

If an issue cannot be resolved within first-line support:

- Escalate to a higher-level engineer  
- Provide full documentation of findings  
- Include steps already taken and relevant logs  

Escalation ensures continuity and avoids duplication of effort.

---

## 11. Closure

Before closing a ticket:

- Confirm resolution with the user (where applicable)  
- Ensure documentation is complete  
- Update ticket status to resolved/closed  

---

## Summary

This workflow demonstrates a structured and consistent approach to IT support.

It ensures:
- Efficient issue handling  
- Clear documentation  
- Alignment with SLA expectations  
- Professional service desk practices