@echo off
REM ==============================================
REM Server Certificate Generation Script - EasyRSA (Windows)
REM Author: Jordan Bradfield
REM Purpose: Generate and sign server certificate using PKI
REM ==============================================

REM Change to EasyRSA installation directory
cd "C:\Program Files\EasyRSA"

REM Ensure PKI has been initialised
if not exist "pki\private" (
    echo PKI not found. Run pki-init.cmd first.
    pause
    exit /b
)

REM Generate server certificate (without passphrase for automated VPN)
EasyRSA build-server-full server nopass

echo.
echo ==============================================
echo Server certificate generation complete
echo Certificates located under C:\Program Files\EasyRSA\pki
echo ==============================================
pause
