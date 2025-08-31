# Scripts – Windows Ticket Simulations

This folder contains Windows 11 Administrator Command Prompt scripts for lab simulations, primarily focused on:

- PKI creation and certificate management
- OpenVPN server and client setup
- Reusable administrative tasks for Windows environments

---

## Folder Structure

- pki/ – Scripts for creating the PKI, generating server and client certificates, verifying them, and cleaning up the PKI environment.
- vpn/ – Scripts for configuring OpenVPN server and client settings.
- other/ – Miscellaneous administrative scripts used in lab exercises.

---

## Usage

1. Open Command Prompt as Administrator.
2. Navigate to the relevant folder, for example:

cd tools\scripts\pki

3. Run scripts in logical order for PKI setup:

pki-init.cmd
build-ca.cmd
generate-server-cert.cmd
generate-client-cert.cmd
verify-cert.cmd
clean-pki.cmd

4. For VPN setup:

cd ..\vpn
server-config-setup.cmd
client-config-setup.cmd

5. Follow on-screen prompts in each script. Pause statements are included for step-by-step control.

Note: Scripts are intended for controlled lab environments. Paths, usernames, and certificates should be adapted to your simulation environment.

---

## Purpose and Recommended Execution Order of Scripts

The scripts in this folder are designed to automate lab tasks for Windows Ticket Simulations, ensuring reproducibility, clarity, and ease of use. They should be executed in a logical order because each step builds on the previous one. Following the recommended sequence prevents errors and ensures the environment is correctly configured.

### PKI Scripts (pki/)

1. **pki-init.cmd**  
   Purpose: Initializes a new PKI environment using EasyRSA.  
   Why first: Creates the folder structure and prepares the environment for certificate creation. Must run before any certificates are generated.

2. **build-ca.cmd**  
   Purpose: Builds the Certificate Authority (CA).  
   Why second: The CA must exist before any server or client certificates are created to ensure proper signing and trust.

3. **generate-server-cert.cmd**  
   Purpose: Generates server certificates for OpenVPN.  
   Why third: The server needs valid certificates to accept client connections. Requires CA from step 2.

4. **generate-client-cert.cmd**  
   Purpose: Generates client certificates for VPN users.  
   Why fourth: Each client certificate must be signed by the CA created in step 2 to allow authentication with the server.

5. **verify-cert.cmd**  
   Purpose: Verifies that the server and client certificates match the CA and are valid.  
   Why fifth: Ensures certificates are correctly generated and signed before deployment.

6. **clean-pki.cmd**  
   Purpose: Optional cleanup of the PKI environment.  
   Why last/optional: Use if you want to reset the PKI to a clean state. Not required for normal operation.

### VPN Scripts (vpn/)

1. **server-config-setup.cmd**  
   Purpose: Configures the OpenVPN server on the Windows VM.  
   Why first: The server must be correctly configured before any clients attempt to connect.

2. **client-config-setup.cmd**  
   Purpose: Configures VPN client settings.  
   Why second: Clients require the server to be running and configured, and valid client certificates must exist from the PKI scripts.

### Other Scripts (other/)

- **miscellaneous-scripts.cmd**  
  Purpose: Contains reusable administrative tasks unrelated to PKI or VPN setup.  
  Why use: Provides convenience for repeated lab tasks or environment preparation. Execution order depends on task needs.

### General Usage Guidelines

- Always open Command Prompt as Administrator.  
- Follow the order outlined above to avoid misconfigurations or errors.  
- Use pause prompts in scripts to verify each step.  
- Document results with screenshots if you intend to share or review progress.  
- Adapt paths and usernames to your specific lab setup.

---

## Best Practices

- Keep scripts modular, one task per script.
- Include comments describing the purpose and expected outcomes.
- Document execution results with screenshots where possible.
- Test scripts in sandbox VMs to ensure reproducibility.

---

## Professional Tips

- This structure demonstrates real-world IT skills and process awareness.
- Clear folder hierarchy, README explanations, and modular scripts impress recruiters.
- Maintaining a consistent naming convention makes scripts easily identifiable and reusable.
