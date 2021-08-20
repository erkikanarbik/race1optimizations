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
DeviceCleanup is a useful utility to remove detached/ghost devices, very safe to do. You can remove devices you are absolutely sure you won’t use anymore, so to use with caution, do not delete something you MIGHT need in the future
Use Ethernet and disable your Wifi card. It causes latency spikes, so disabling it is better. If you have a Realtek ethernet card, download the driver provided in the Drive, then:
Extract to Desktop
Navigate to Device Manager, then Network adapters, right click on your ethernet card and update drivers
Browse my computer for drivers, let me pick from a list, have disk, browse and then go into the folder you extracted
select the .inf file, Ok, choose your ethernet card model, and then next.
When you are done, right click on your ethernet adapter, Properties, and then advanced.
Follow the settings in this imgur link, thanks Dreammjow! (These have completely eliminated my latency spikes!!)
https://imgur.com/a/u2TRrbt


Try crss on High and Realtime, results differ widely depending on the system.
To do so, open regedit and navigate to “Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions” and set “CpuPriorityClass” to 3 for High and 4 for Realtime priority (By default it’s on Real Time). Restart your PC, Benchmark your performance and latency with both, and keep the one that is best.( I got a +30 fps in Cs:Go with High, but it might be the opposite for you)

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

BCDEdit and system timers
Run Command Prompt as admin and paste these italicized commands (right click and paste only the ones you need):
To undo a command in BCDEdit, do bcdedit /deletevalue X (where X is useplatformclock, x2apicpolicy, etc.)
bcdedit /set disabledynamictick yes (Windows 8+)
This command forces the kernel timer to constantly poll for interrupts instead of wait for them; dynamic tick was implemented as a power saving feature for laptops but hurts desktop performance
bcdedit /set useplatformtick yes (Windows 8+)
Forces the clock to be backed by a platform source, no synthetic timers are allowed
Potentially better performance, sets timer resolution to .5 instead of .501 or .499 ms
bcdedit /set tscsyncpolicy [legacy | default | enhanced] (Windows 8+)
Tells Windows which implementation of TSC to use, try all three and see which you prefer

Different timers can get called in windows depending on the application. HPET is sometimes called for certain benchmarks such as 3dmark. The default timer for most OS’s is TSC.
With bios options and cmd options you can permanently set at timer and make sure nothing else gets called. HPET has caused issues for games in the past where it has gotten called and shouldn't have been. I’m unsure of when ACPI can get called. 

Windows 1809+ has a synthetic TSC timer of 10mhz there is no work around currently.

TSC Time Stamp Counter
TSC = 2-4mhz (give or take) depending on the CPU speed
TSC will give you the lowest latency and highest fps
TSC is usually the default timer

To run only TSC
In cmd
bcdedit /set useplatformclock no
The HPET option in bios does not matter if this is set in cmd
The HPET option in bios should be ON to make the timer resolution more accurate 
Disable synthetic timer, this will keep the timer resolution at an even number avoiding issues
bcdedit /set useplatformtick yes

ACPI Power Management Timer
ACPI PMT = 3.57 this is a fixed timer for all PC’s
ACPI PMT might give you a different mouse feel and clock sync
Although TSC is better, this timer is worth trying out

To run only ACPI PMT
In cmd
bcdedit /set useplatformclock yes 
& 
Disable HPET in bios

HPET High Precision Event Timer
HPET = 10-24mhz  (give or take) depending on the PC and OS version
HPET runs like trash
HPET feels like trash
HPET is trash… trash

To run only HPET
In cmd
bcdedit /set useplatformclock yes
& 
Enable HPET in bios

Find the best timer for you its 99% probably going to be TSC. 



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



Device Manager

Open Device Manager
Menu
View
Sort devices by connection
Expand like I did here
Right click on every single USB device
Go to "Power management" (option is not available for every device/controller)
Uncheck the two boxes in Power management if checked like here
Disable every unused PCI-to-PCI Bridge
Disable the audio device on the PCI bridge with your GPU

Device Manager
Open Device Manager (devmgmt.msc) and disable anything you’re not using. Be careful not to disable something you use. Uninstalling a driver via Device Manager will most likely result in it reinstalling after reboot. In order to completely disable a driver, you must disable it instead of uninstalling. When you disable something in Device Manager, the driver is unloaded. Drivers interrupt the CPU, halting everything until the driver gets CPU time (some drivers are poorly programmed and can cause the system to halt for a very long time [stuttering]). What to disable:
Display adapters:
Intel graphics (if you don’t use it, ideally should be disabled in the BIOS)
Network adapters:
All WAN miniports
Microsoft ISATAP Adapter
	Storage controllers:
Microsoft iSCSI Initiator
	System devices:
Composite Bus Enumerator
Intel Management Engine / AMD PSP
Intel SPI (flash) Controller
Microsoft GS Wavetable Synth
Microsoft Virtual Drive Enumerator (if not using virtual drives)
NDIS Virtual Network Adapter Enumerator
Remote Desktop Device Redirector Bus
SMBus
System speaker
Terminal Server Mouse/Keyboard drivers
UMBus

In the “Properties” window, be sure to disable “Power Management” for devices such as USB root hubs, network controllers, etc.

Now click on View→Devices by connection
Expand PCI bus, then expand all the PCI Express Root Ports
Locate PCI Express standard Upstream Switch Port and disable every single one with nothing connected to it (if you have it)
Locate Standard AHCI 1.0 Serial ATA Controller, disable any channel with nothing connected to it
Disable the High Definition Audio Controller that’s on the same PCIe port as your video card, also the USB controller
Disable any USB controllers or hubs with nothing connected to them
For your mouse and keyboard, disable any “HID-compliant device,” these devices are used for your mouse/keyboard software but you don’t need them always running (if your mouse disconnects, you can use your keyboard to re-enable them)
Disable any PCI Express Root Port with nothing connected to it (they are usually empty NVMe or PCIe ports)

Here is an example of someone’s device manager to give you a better idea: https://i.imgur.com/9sdzhbl.png
Some Device Manager tweaks:
Composite Bus Enumerator
Generic PnP Monitors
Generic SuperSpeed USB Hubs (unneeded ones)
Generic USB Hubs (unneeded ones)
HID-compliant Consumer Control Devices (ALL)
HID-compliant System Controllers (unneeded ones [make sure you have a backup mouse or whatever just incase you need to reenable])
HID-compliant Vendor-Defined Devices (unneeded ones iirc)
High Precision Event Timer
Intel Management Engine Interface (If you're not going to use chipset drivers)
Microsoft GS Wavetable Synth
Microsoft System Management BIOS Driver
Microsoft Virtual Drive Enumerator
NDIS Virtual Network Adapter Enumerator
Numeric Data Processor
PCI Device (Unneeded ones)
PCI Simple Communications Controller
PCI standard RAM Controller
PCI-to-PCI Bridge (the unneeded ones)
Programmable Interrupt Controller
Remote Desktop Device Redirector Bus
SM Bus Controller (the unneeded ones)
System Timer
UMBus Root Bus Enumerator
USB Input Device (the unneeded ones)

