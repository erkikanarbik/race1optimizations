:: GGOS STARTUP OPTIMIZER
:: https://gitlab.com/ggos/support

@echo off
setlocal ENABLEDELAYEDEXPANSION

:: CONFIRM ADMIN PRIVILEGES
dism >nul 2>&1 || exit

:: CONFIRM PRESENCE OF AUDIOSVCHOST - AUDIO WILL BREAK ON OTHER ISOS
if not exist "%SYSTEMROOT%\System32\audiosvchost.exe" exit

:: DISABLE NEWLY ADDED SERVICES
sc config edgeupdate start=disabled >nul 2>&1
sc config edgeupdatem start=disabled >nul 2>&1
sc config gupdate start=disabled >nul 2>&1
sc config gupdatem start=disabled >nul 2>&1
sc config MozillaMaintenance start=disabled >nul 2>&1

:: LOWER PRIORITY OF SYSTEM PROCESSES -------------------------------------------------------------
:: values: "idle", "below normal", "normal", "above normal", "high priority", "realtime"

for /f %%a in ('wmic cpu get MaxClockSpeed /format:value ^| findstr "MaxClockSpeed"') do ( set /a %%a )

set /a CPU=%PROCESSOR_LEVEL%*%MaxClockSpeed%

if %CPU% GEQ 26000 goto:high
if %CPU% GEQ 19000 goto:mid
if %CPU% GEQ 12000 goto:low
exit

:high
wmic process where name="ctfmon.exe" call setpriority "below normal" >nul 2>&1
wmic process where name="dwm.exe" call setpriority "normal" >nul 2>&1
wmic process where name="svchost.exe" call setpriority "below normal" >nul 2>&1
exit

:mid
wmic process where name="ctfmon.exe" call setpriority "normal" >nul 2>&1
wmic process where name="dwm.exe" call setpriority "normal" >nul 2>&1
wmic process where name="svchost.exe" call setpriority "below normal" >nul 2>&1
exit

:low
wmic process where name="ctfmon.exe" call setpriority "above normal" >nul 2>&1
wmic process where name="dwm.exe" call setpriority "above normal" >nul 2>&1
wmic process where name="svchost.exe" call setpriority "normal" >nul 2>&1
exit
