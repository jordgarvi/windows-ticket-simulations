@echo off
REM ==============================================
REM Clean PKI Script - EasyRSA (Windows)
REM Author: Jordan Bradfield
REM Purpose: Deletes existing PKI folder for a fresh start
REM ==============================================

REM Change to EasyRSA installation directory
cd "C:\Program Files\EasyRSA"

REM Confirm before deleting
echo ==============================================
echo WARNING: This will permanently delete the existing PKI folder!
echo Press CTRL+C to cancel or any key to continue.
pause

REM Delete the PKI folder
rmdir /S /Q "pki"

echo.
echo ==============================================
echo PKI folder cleaned.
echo You can now re-run pki-init.cmd to start fresh.
echo ==============================================
pause
