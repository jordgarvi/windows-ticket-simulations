@echo off
REM ====================================================
REM Miscellaneous Lab Scripts - Windows 11 VM
REM Author: Jordan Bradfield
REM Purpose: Collection of helper scripts for lab tasks
REM ====================================================

:MENU
cls
echo ===============================================
echo       Miscellaneous Lab Scripts Menu
echo ===============================================
echo 1. Check Network Connectivity
echo 2. Display System Info
echo 3. Backup Lab Configs
echo 4. Clear Temp & Log Files
echo 5. Exit
echo ===============================================
set /p choice=Choose an option [1-5]:

if "%choice%"=="1" goto NETWORK
if "%choice%"=="2" goto SYSINFO
if "%choice%"=="3" goto BACKUP
if "%choice%"=="4" goto CLEAN
if "%choice%"=="5" exit

:NETWORK
echo Checking network connectivity to 8.8.8.8...
ping 8.8.8.8 -n 4
pause
goto MENU

:SYSINFO
echo Displaying system information...
systeminfo
echo.
echo Displaying network configuration...
ipconfig /all
pause
goto MENU

:BACKUP
echo Backing up lab configs...
REM Modify these paths to match your lab folders
xcopy "C:\Program Files\EasyRSA\pki" "C:\Lab-Backups\EasyRSA-pki" /E /I /Y
xcopy "C:\Program Files\OpenVPN\config" "C:\Lab-Backups\OpenVPN-config" /E /I /Y
echo Backup complete.
pause
goto MENU

:CLEAN
echo Cleaning temporary files and logs...
del /q /f "%TEMP%\*.*"
del /q /f "C:\Lab-Backups\*.log"
echo Clean up complete.
pause
goto MENU
