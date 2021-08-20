:: RESET NETWORK SETTINGS
:: https://gitlab.com/ggos/support

@echo off
setlocal ENABLEDELAYEDEXPANSION

:: CHECK FOR ADMIN PRIVILEGES
dism >nul 2>&1 || (echo This script must be Run as Administrator. && pause && exit /b 1)

:: RESET NETWORK SETTINGS
netsh winsock reset >nul 2>&1
netsh int ipv4 reset >nul 2>&1
netsh int ipv6 reset >nul 2>&1
ipconfig /release >nul 2>&1
ipconfig /renew >nul 2>&1
ipconfig /flushdns >nul 2>&1

:: RESTART NETWORK ADAPTERS
for /f "tokens=3,*" %%i in ('netsh int show interface^|find "Connected"') do (
	netsh int set interface name="%%j" admin="disabled" >nul 2>&1
	netsh int set interface name="%%j" admin="enabled" >nul 2>&1
)

exit /b
