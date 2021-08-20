### Race1 Optimization

[![ballout](Optional%20Tweaks/bg3.PNG)]


## Useful tools
[1. Activate OS](https://github.com/kkkgo/KMS_VL_ALL)

[2. GPU-Z](https://www.techpowerup.com/download/techpowerup-gpu-z/)

[3. Text Editing Done Right](https://www.sublimetext.com/)

[4. QuickCPU](https://coderbag.com/product/quickcpu)

[5. Visual C++ Redistributable Runtimes](https://www.techpowerup.com/download/visual-c-redistributable-runtime-package-all-in-one/)


Enable MSI mode for drivers
Some drivers default to using legacy pin-triggered interrupts, which are now emulated and are slower than using MSI (message-signaled interrupts). Enabling MSI for a driver that does not support it might break your Windows. If something goes wrong, you can recover with last known settings (f8) or by editing the registry offline. On Windows 10 systems the MSI utility should show whether a driver supports MSI or not.
To enable MSI mode for drivers, download MSI_util_v2, run as admin, then select your graphics card, audio controllers, PCIe ports. Do not enable it for USB2, SATA controller driver, or anything you’re not sure of. Here is what mine looks like:
You can check the Device Instance Path (the address listed on the bottom) in Device Manager by right-clicking a device, going to Properties, Details, Device Instance Path
Priorities usually hurt more than helps
Every time you update a driver you have to redo the steps for the updated driver
Only devices with IRQs will benefit, seen under Device Manager → View → Resources by Connection



Automatically setting process affinities and priorities
If you don’t use SMT/HT, you can skip this step. If you have SMT/HT enabled, Process Lasso is a useful program to set CPU affinities to every other logical processor automatically for better performance in games. You don’t have to use this software; anything else that manages affinities persistently will work.
Download and install: https://bitsum.com/get-lasso-pro/
Launch your game, right click on the .exe, press “CPU Affinity,” “Always,” then select every other CPU (example here).
For games with an anti-cheat that prevent setting affinities, you will have to set the launcher’s affinity and the game will automatically inherit the affinity. Example: set Epic Games Launcher’s affinity, then Fortnite will automatically receive the affinity from the launcher

Other options for Process Lasso:
Press the Options menu, go to General Settings, Reconfigure the way Process Lasso starts. For the first box select “Do not start at login”, the second box select “Start at login for ALL users,” press Next, “Manage ALL processes Process Lasso has access to”, click finish. This will ensure only ProcessGovernor.exe (the service) runs at login, which will set the priorities of processes automatically.
Press the Options menu, go to General Settings, Refresh interval (governor), select 10s. This will minimize CPU usage. The “Other” option doesn’t seem to work.
We want to change the priorities of all programs to lowest priority. Highlight all programs (ctrl+a), right click, Priority class always on Idle.
Avoid ProBalance, IdleSaver, or SmartTrim since they do more than you
Under Options, CPU, More, Configure foreground boost, enable both settings.
Feel free to explore the other options. You don’t want the user interface (ProcessLasso.exe) running all the time, only ProcessGovernor.exe.

set affinity for svchost, dwm so that they are offloaded from gpu/mouse core. (they generally use the most cycles out of all the processes on a fully optimized system)

-----------------------------------------------------------------
type how many cores you have somewhere in the following format.
each 0 represents a core or thread

4c4t = 0000
6c6t = 000000
8c8t = 00000000

4c8t = 00000000
6c12t = 000000000000
8c16t = 0000000000000000

-----------------------------------------------------------------

0 = inactive core
1 = active core
remember that it works in reverse, so for example, setting all those processes to CPU 1 would be 00000010 for a 8C8T CPU
now you have the binary value. convert the binary value to decimal and change the "ProcessorAffinity=" for each line in the provided .bat file

put this .bat in "shell:startup" so it applies each time on startup


Try crss on High and Realtime, results differ widely depending on the system.
To do so, open regedit and navigate to “Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions” and set “CpuPriorityClass” to 3 for High and 4 for Realtime priority (By default it’s on Real Time). Restart your PC, Benchmark your performance and latency with both, and keep the one that is best.( I got a +30 fps in Cs:Go with High, but it might be the opposite for you)
