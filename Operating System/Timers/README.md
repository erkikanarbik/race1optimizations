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
