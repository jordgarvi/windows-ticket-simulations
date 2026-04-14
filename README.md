# Windows IT Support Ticket Simulations

This repository demonstrates structured IT support workflows through a collection of simulated service desk tickets in a Windows environment.

Each ticket follows a consistent format aligned with real support operations, including incident logging, SLA prioritisation, investigation, resolution, and verification.

The aim is to showcase practical troubleshooting ability alongside clear documentation and service desk best practices.

---

## Simulated Service Desk Environment

This project is designed to reflect how IT support teams operate in practice:

- Ticket-based incident and request handling  
- SLA-driven prioritisation (P1–P4)  
- Structured troubleshooting workflows  
- Knowledge base documentation for repeat issues  
- Clear resolution notes and verification steps  
- Escalation awareness and decision-making  

---

## Service Desk Practices

- SLA and priority matrix (P1–P4)  
- Ticket lifecycle and workflow  
- Escalation handling and documentation standards  

👉 [View SLA & Priority Matrix](docs/sla-priority-matrix.md)  
👉 [View Service Desk Workflow](docs/service-desk-workflow.md)

---

## Repository Structure

- **tickets/**  
  End-to-end incident and request simulations covering common IT support scenarios  

- **knowledge-base/**  
  Supporting documentation for repeat issues and standard fixes  

- **docs/**  
  Service desk processes, including SLA definitions and workflow standards  

- **images/**  
  Screenshots used to support investigation and resolution steps  

- **tools/**  
  Supporting scripts and utilities used within the lab  

---

## Featured Ticket Examples

### DNS Resolution Failure
Diagnosed a system with working network connectivity but failed domain resolution.  
Used layered troubleshooting (`ping`, `nslookup`) to isolate DNS failure and identify IPv6 fallback masking the issue.  

👉 [View Ticket](tickets/06-dns-resolution-failure.md)

---

### No Internet Connectivity (Missing Default Gateway)
Investigated a workstation with no external connectivity despite a valid IP address.  
Identified missing default gateway and restored network routing.  

👉 [View Ticket](tickets/05-no-internet-connectivity.md)

---

### Shared Folder Access Denied (NTFS Permissions)
Resolved access issue where a user could see but not open a shared folder.  
Identified explicit deny permissions overriding access and restored correct NTFS configuration.  

👉 [View Ticket](tickets/07-user-cannot-access-shared-folder.md)

---

## Skills Demonstrated

### IT Support & Troubleshooting
- Incident diagnosis and structured problem-solving  
- Root cause analysis and verification  
- User access and permissions troubleshooting  
- Application and device support  

### Microsoft & Windows Support
- Windows 10/11 environments  
- Outlook and OneDrive troubleshooting  
- System tools and services (Event Viewer, Services, Task Manager)  

### Networking Fundamentals
- DNS, DHCP, and IP configuration  
- Connectivity troubleshooting  
- Gateway and routing issues  

### Service Desk Operations
- SLA prioritisation (P1–P4)  
- Incident logging and documentation  
- Knowledge base creation  
- Escalation awareness  

---

## Purpose

This project demonstrates how I approach IT support tasks from initial user report through to resolution and documentation.

It reflects both technical capability and an understanding of how service desks operate in structured environments.