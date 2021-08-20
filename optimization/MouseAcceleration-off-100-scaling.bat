@Echo off
@Echo ----
@Echo Zero Mouse Acceleration - 100% Scaling only. Run as Administrator.
@Echo ----
@Echo Do not use if you Accessibility Options on Ease of Access Center on
@Echo ----
@Echo Make sure you have taken a backup use screenshot of your settings before proceeding
@Echo ....
PAUSE
REM Sets X and Y curves to zero 
REM Sources - 1 Technical read: http://www.esreality.com/index.php?a=post&id=1945096
REM Sources - 2 TL Forum read: https://tl.net/forum/tech-support/157790-mouse-registry
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "00000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "00000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
REM Standard no acceleration entries
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
REM Accessibility Options / Ease of Access Mouse Key removal
reg delete "HKEY_CURRENT_USER\Control Panel\Accessibility\MouseKeys" /v "MaximumSpeed" /f
reg delete "HKEY_CURRENT_USER\Control Panel\Accessibility\MouseKeys" /v "TimeToMaximumSpeed" /f
