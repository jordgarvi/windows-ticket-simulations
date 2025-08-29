# Scripts – Windows Ticket Simulations

This folder contains Windows 11 Administrator Command Prompt scripts for lab simulations, primarily focused on:

- PKI creation and certificate management
- OpenVPN server and client setup
- Reusable administrative tasks for Windows environments

## Folder Structure

- pki/ – Scripts for creating the PKI, generating server and client certificates, verifying them, and cleaning up the PKI environment.
- vpn/ – Scripts for configuring OpenVPN server and client settings.
- other/ – Miscellaneous administrative scripts used in lab exercises.

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

## Best Practices

- Keep scripts modular, one task per script.
- Include comments describing the purpose and expected outcomes.
- Document execution results with screenshots where possible.
- Test scripts in sandbox VMs to ensure reproducibility.

## Professional Tips

- This structure demonstrates real-world IT skills and process awareness.
- Clear folder hierarchy, README explanations, and modular scripts impress recruiters.
- Maintaining a consistent naming convention makes scripts easily identifiable and reusable.
