# Windows Service Desk Lab

A structured IT support portfolio focused on service desk operations, troubleshooting workflows, and incident resolution across Windows and Microsoft 365 environments.

This repository demonstrates how common support issues are investigated, documented, prioritised, resolved, and verified within a structured ticket-based workflow.

The project is designed to reflect modern first-line and second-line support practices, with an emphasis on troubleshooting methodology, user impact, SLA awareness, and clear technical documentation.

---

## Service Desk Environment

This lab is structured to reflect operational IT support workflows, including:

- Ticket-based incident and request handling  
- SLA-driven prioritisation (P1–P4)  
- Structured troubleshooting and root cause analysis  
- Resolution verification and documentation  
- Knowledge base creation for repeat issues  
- Escalation awareness and support boundaries  

---

## Service Desk Practices

- SLA and priority matrix (P1–P4)  
- Ticket lifecycle and workflow standards  
- Escalation handling and documentation practices  
- Structured troubleshooting methodology  

👉 [View SLA & Priority Matrix](docs/sla-priority-matrix.md)  
👉 [View Service Desk Workflow](docs/service-desk-workflow.md)

---

## Repository Structure

### tickets/
Structured service desk incidents and request scenarios covering:

- Microsoft 365 support  
- Networking and connectivity  
- User access and permissions  
- VPN and remote access  
- Windows troubleshooting  
- Printing and device issues  

---

### knowledge-base/
Reusable support documentation and standard remediation procedures for common issues.

---

### docs/
Service desk operational standards, workflows, SLA definitions, and troubleshooting processes.

---

### images/
Supporting screenshots and evidence captured during investigation and resolution.

---

### tools/
Supporting scripts, commands, and utilities used throughout the lab environment.

---

## Featured Ticket Examples

### DNS Resolution Failure
Diagnosed a workstation with functioning network connectivity but failed domain name resolution.

Used layered troubleshooting (`ping`, `nslookup`) to isolate DNS failure and identify IPv6 fallback masking the issue.

👉 [View Ticket](tickets/06-dns-resolution-failure.md)

---

### No Internet Connectivity – Missing Default Gateway
Investigated a workstation unable to access external resources despite receiving a valid IP address.

Identified missing default gateway configuration and restored network routing functionality.

👉 [View Ticket](tickets/05-no-internet-connectivity.md)

---

### Shared Folder Access Denied – NTFS Permissions
Resolved an access issue where a user could see but not open a shared folder.

Identified explicit deny permissions overriding access inheritance and restored correct NTFS permissions.

👉 [View Ticket](tickets/07-user-cannot-access-shared-folder.md)

---

## Skills Demonstrated

### IT Support & Troubleshooting
- Incident diagnosis and structured problem-solving  
- Root cause analysis and verification  
- User access and permissions troubleshooting  
- Application and device support  
- Troubleshooting methodology and escalation awareness  

---

### Microsoft & Windows Support
- Windows 10/11 environments  
- Outlook and OneDrive troubleshooting  
- Windows services and system tools  
- Event Viewer, Services, Task Manager, Device Manager  

---

### Networking Fundamentals
- DNS, DHCP, and IP configuration  
- Connectivity troubleshooting  
- Gateway and routing issues  
- VPN and remote access fundamentals  

---

### Service Desk Operations
- SLA prioritisation (P1–P4)  
- Incident logging and documentation  
- Knowledge base development  
- Structured ticket workflows  
- User-focused communication and verification  

---

## Purpose

This project demonstrates how I approach IT support scenarios from initial user report through structured investigation, diagnosis, resolution, and verification.

It is intended to reflect practical service desk operations while showcasing troubleshooting ability, documentation standards, and operational support workflows.