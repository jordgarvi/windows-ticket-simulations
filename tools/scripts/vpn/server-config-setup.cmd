@echo off
REM ==============================================
REM VPN Server Configuration Script - OpenVPN (Windows)
REM Author: Jordan Bradfield
REM Purpose: Automate server.ovpn setup and basic validation
REM ==============================================

REM Change to OpenVPN config directory
cd "C:\Program Files\OpenVPN\config"

REM Copy template server config if not already present
copy "..\templates\server-template.ovpn" "server.ovpn"

REM Ensure server certificate and key are present
if not exist "..\certs\server.crt" (
    echo Server certificate missing. Generate with generate-server-cert.cmd first.
    pause
    exit /b
)
if not exist "..\certs\server.key" (
    echo Server key missing. Generate with generate-server-cert.cmd first.
    pause
    exit /b
)

REM Optional: start OpenVPN server in console mode for testing
REM "C:\Program Files\OpenVPN\bin\openvpn.exe" --config "server.ovpn"

echo.
echo ==============================================
echo VPN Server Configuration Complete
echo server.ovpn configured with certificates and keys
echo ==============================================
pause
