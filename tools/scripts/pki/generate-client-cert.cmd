@echo off
REM ==============================================
REM Client Certificate Generation Script - EasyRSA (Windows)
REM Author: Jordan Bradfield
REM Purpose: Generate and sign VPN client certificates using PKI
REM ==============================================

REM Change to EasyRSA installation directory
cd "C:\Program Files\EasyRSA"

REM Ensure PKI has been initialised
if not exist "pki\private" (
    echo PKI not found. Run pki-init.cmd first.
    pause
    exit /b
)

REM Prompt for client name
set /p CLIENT_NAME=Enter client name (e.g., sconnor): 

REM Generate client certificate (without passphrase)
EasyRSA build-client-full %CLIENT_NAME% nopass

echo.
echo ==============================================
echo Client certificate generation complete for %CLIENT_NAME%
echo Certificates located under C:\Program Files\EasyRSA\pki
echo ==============================================
pause
