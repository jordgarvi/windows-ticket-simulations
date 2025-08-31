@echo off
REM ==============================================
REM Build CA Script - EasyRSA (Windows)
REM Author: Jordan Bradfield
REM Purpose: Creates a new Certificate Authority (CA)
REM ==============================================

REM Change to EasyRSA installation directory
cd "C:\Program Files\EasyRSA"

REM Launch EasyRSA to build the CA
REM Note: You will be prompted for a Common Name (e.g. "Lab-CA")
EasyRSA build-ca

echo.
echo ==============================================
echo Certificate Authority (CA) successfully created
echo Files stored in: C:\Program Files\EasyRSA\pki
echo    - ca.crt (public certificate)
echo    - private\ca.key (private key, keep secure!)
echo ==============================================
pause
