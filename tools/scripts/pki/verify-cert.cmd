@echo off
REM ==============================================
REM Certificate Verification Script - EasyRSA (Windows)
REM Author: Jordan Bradfield
REM Purpose: Verify client or server certificates against CA
REM ==============================================

REM Change to EasyRSA installation directory
cd "C:\Program Files\EasyRSA"

REM Prompt for certificate file name (without extension)
set /p CERT_NAME=Enter certificate name to verify (e.g., sconnor): 

REM Verify certificate against CA
EasyRSA verify %CERT_NAME%

echo.
echo ==============================================
echo Verification complete for %CERT_NAME%
echo Check console output for validity and mismatch warnings
echo ==============================================
pause
