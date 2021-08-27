Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v "restrictanonymous" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v "restrictanonymoussam" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightFeatures" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LastActiveClick" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableBalloonTips" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarGlomLevel" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisableThumbnailCache" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SeparateProcess" /t REG_DWORD /d "1" /f

Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ConfirmFileDelete" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DisableThumbnailsOnNetworkFolders" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "TaskbarNoNotification" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /t REG_DWORD /d "221" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f

Reg.exe add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "NoWindowMinimizingShortcuts" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\DWM" /v "CompositionPolicy" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "16384" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug" /v "Auto" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\AeDebug" /v "Auto" /t REG_SZ /d "0" /f

Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow" /v "DefaultApplied" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow" /v "DefaultApplied" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation" /v "DefaultApplied" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TaskbarAnimations" /v "DefaultApplied" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "AutoApproveOSDumps" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PCHealth\ErrorReporting" /v "ShowUI" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\PCHealth\ErrorReporting" /v "ShowUI" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "100" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "RunStartupScriptSync" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer" /v "GlobalAssocChangedCounter" /t REG_DWORD /d "91" /f