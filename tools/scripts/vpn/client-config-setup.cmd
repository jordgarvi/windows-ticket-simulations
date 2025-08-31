@echo off
REM ==============================================
REM VPN Client Configuration Script - Windows CMD
REM Author: Jordan Bradfield
REM Purpose: Deploy and initialize OpenVPN client configuration
REM ==============================================

REM -----------------------------
REM Variables
REM -----------------------------
SET CLIENT_OVPN_FILE=C:\windows-ticket-simulations\tools\templates\sconnor.ovpn
SET OPENVPN_CONFIG_DIR=C:\Program Files\OpenVPN\config
SET OPENVPN_GUI_PATH="C:\Program Files\OpenVPN\bin\OpenVPN-GUI.exe"

REM -----------------------------
REM Verify OpenVPN Installation
REM -----------------------------
IF NOT EXIST %OPENVPN_GUI_PATH% (
    echo ERROR: OpenVPN GUI not found at %OPENVPN_GUI_PATH%
    echo Please install OpenVPN before running this script.
    pause
    exit /b 1
)

REM -----------------------------
REM Copy Client Configuration
REM -----------------------------
echo Copying client configuration to OpenVPN config folder...
copy "%CLIENT_OVPN_FILE%" "%OPENVPN_CONFIG_DIR%" /Y
IF %ERRORLEVEL% NEQ 0 (
    echo ERROR: Failed to copy client configuration.
    pause
    exit /b 1
)

REM -----------------------------
REM Launch OpenVPN GUI
REM -----------------------------
echo Launching OpenVPN GUI...
start "" %OPENVPN_GUI_PATH%

REM -----------------------------
REM Completion Message
REM -----------------------------
echo.
echo ==============================================
echo VPN Client Configuration Complete
echo Configuration file copied and GUI launched
echo ==============================================
pause
