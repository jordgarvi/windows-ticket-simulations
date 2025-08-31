@echo off
REM ==============================================
REM PKI Initialisation Script - EasyRSA (Windows)
REM Author: Jordan Bradfield
REM Purpose: Initialises a new PKI environment
REM ==============================================

REM Change to EasyRSA installation directory
cd "C:\Program Files\EasyRSA"

REM Initialize the PKI folder (creates pki\ structure)
EasyRSA init-pki

REM Optional: Clean up any existing PKI before re-init
REM EasyRSA init-pki --force

echo.
echo ==============================================
echo PKI Initialisation Complete
echo PKI structure created under C:\Program Files\EasyRSA\pki
echo ==============================================
pause
