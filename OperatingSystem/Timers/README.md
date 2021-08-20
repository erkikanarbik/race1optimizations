## BCDEdit and system timers
Different timers can get called in windows depending on the application. HPET is sometimes called for certain benchmarks such as 3dmark. The default timer for most OS’s is TSC.
With bios options and cmd options you can permanently set at timer and make sure nothing else gets called. HPET has caused issues for games in the past where it has gotten called and shouldn't have been. I’m unsure of when ACPI can get called. 

Windows 1809+ has a synthetic TSC timer of 10mhz there is no work around currently.

## Find the best timer for you its 99% probably going to be TSC. 
# TSC Time Stamp Counter = 2-4mhz
 * Will most likely give you the lowest latency and highest fps
 * TSC is usually the default timer
 * To run only TSC run following command in cmd:
 * bcdedit /set useplatformclock no
 * The HPET option in bios does not matter if this is set in cmd
 * The HPET option in bios should be ON to make the timer resolution more accurate 
 * Disable synthetic timer, this will keep the timer resolution at an even number avoiding issues
 * bcdedit /set useplatformtick yes

# ACPI Power Management Timer = 3.57 this is a fixed timer for all PCs
 * ACPI PMT might give you a different mouse feel and clock sync
 * Although TSC is better, this timer is worth trying out
 * To run only ACPI PMT
 * bcdedit /set useplatformclock yes 
 * & Disable HPET in bios

# HPET High Precision Event Timer = 10-24mhz
 * HPET runs like trash
 * HPET feels like trash
 * HPET is trash… trash
 * To run only HPET
 * bcdedit /set useplatformclock yes
 * & Enable HPET in bios

BCDEdit
To configure Boot Configuration Data (BCD), run Command Prompt (cmd) as admin and paste each command:

bcdedit /set disabledynamictick yes
Forces the timer to be active all the time instead of stopping it to save power (Windows 8+)

bcdedit /set useplatformtick yes
Disables Synthetic Timers and allows an even timer of 0.5ms (Windows 8+)

bcdedit /set tscsyncpolicy enhanced
Enhanced Timestamp Counter Sync Policy (Windows 8+)

bcdedit /set tpmbootentropy ForceDisable
Disables the Trusted Platform Module

bcdedit /set hypervisorlaunchtype off
Disables Hyper Virtualization

bcdedit /set quietboot yes
Disables Windows logo on startup (Windows 8+)

bcdedit /timeout 0
Sets the boot timeout to 0, use 5 for dual boot so you have time to choose between the Operating Systems

bcdedit /set allowedinmemorysettings 0x0
Disables Memory Mitigations (Windows 8+)

bcdedit /set isolatedcontext No
Disables Memory Mitigations (Windows 8+)

bcdedit /set nx alwaysoff
Disables DEP, if Valorant / Mayhem breaks, use bcdedit /set nx optin instead

bcdedit /set bootux disabled
Disables the boot screen animation (Windows 8.1+)

bcdedit /set bootmenupolicy legacy
Allows for a Windows 7-like boot menu (Windows 8+)

A few extra ones to try out, credit to Riot for these:
bcdedit /set tscsyncpolicy legacy
bcdedit /set uselegacyapicmode yes
bcdedit /set x2apicpolicy disable

To revert a BCDEdit command, do bcdedit /deletevalue (for example bcdedit /deletevalue tscsyncpolicy)





Run cmd as admin and paste
To undo a command:
bcdedit /deletevalue X (where X is useplatformclock, x2apicpolicy, etc.)

This command forces the kernel timer to constantly poll for interrupts instead of wait for them; dynamic tick was implemented as a power saving feature for laptops but hurts desktop performance
bcdedit /set disabledynamictick yes (Windows 8+)

Forces the clock to be backed by a platform source, no synthetic timers are allowed
Potentially better performance, sets timer resolution to .5 instead of .501 or .499 ms
bcdedit /set useplatformtick yes (Windows 8+)

Tells Windows which implementation of TSC to use, try all three and see which you prefer
bcdedit /set tscsyncpolicy [legacy | default | enhanced] (Windows 8+)
