@echo off
setlocal EnableExtensions
rem UTF-8 console for readable messages on modern Windows.
chcp 65001 >nul 2>&1
cd /d "%~dp0"

if not exist "ssh_bridge_manager.exe" (
  echo [ERROR] ssh_bridge_manager.exe not found in this folder.
  pause
  exit /b 1
)

echo.
echo  终端共享管理工具 - backend
echo  --------------------------
echo  Starts: ssh_bridge_manager.exe
echo  Desktop UI (optional): double-click ssh_bridge_desktop.exe
echo  Browser: http://127.0.0.1:18081/  (or http_port in config.json)
echo.
echo  config.json: if missing, the app creates an empty one here.
echo.

ssh_bridge_manager.exe %*
echo.
echo Exit code=%ERRORLEVEL%
pause
exit /b %ERRORLEVEL%
