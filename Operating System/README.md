### Operating System Optimization

[![ballout](Optional%20Tweaks/background.png)]


## Useful tools
[text](https://github.com/kkkgo/KMS_VL_ALL)


Windows Registry Editor Version 5.00
;disable cpu core parking
[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583]
"ValueMin"=dword:00000000
"ValueMax"=dword:00000000

10) Other general tweaks:
Disable your paging file (Certain games actually like them enabled, such as PUBG, Warzone and Mw, test by yourself and see)
Type “Systempropertiesadvanced” in the search bar if you have 1709, then go to the “advanced” and “virtual memory” tab, or go to “Advanced system settings”, “Performance” and “Advanced” , then “virtual memory”.
Tick the “Automatically set” if you want it enabled.
Untick “Automatically set” and select your drive, then “no paging file” and “set”, apply and restart.
Overclocking your Cpu and Gpu on Desktop, and undervolting them on laptop (Plenty of guides out there, i don’t need to detail this, and if you really need help there is an Overclock channel!).