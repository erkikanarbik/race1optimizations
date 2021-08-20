### MAXIMUS VIII HERO ASUS BIOS Version 3802

## GRUB Guide
 * Download your bios version from website and open with [UEFITool](https://github.com/LongSoft/UEFITool/releases)
 * Use search "high precision" to find where bios settings are hidden and "Extract as is..."
 * Load with [IRFExtractor](http://bios-mods.com/pub/donovan6000/Software/Universal%20IFR%20Extractor/Universal%20IFR%20Extractor.exe) and extract
 * Rename output file to a.txt and [IFR Formatter](https://github.com/BoringBoredom/IFR-Formatter) on it
 * Download [modGRUBShell.efi](https://github.com/datasone/grub-mod-setup_var/releases) put to formatted FAT32 USB in folder BOOT\EFI (make these manually)
 * Set bios to UEFI, disable secure boot and boot from USB (Should booting from USB not work, boot to EFI Shell from Bios)
 * EFI shell will open. Select your flash drive (I need to type fs7:). You will see from the list which one  it is.
 * Type CD BOOT\EFI; then type bootx64.efi
 * GRUB will open - here you can edit any offset from IRF Formatter output.
 * Use the following command: setup_var offset [value] [variable name]
 * Type reboot when done
 * Refer to datasone github if you have issues

# Example to enable TPM support
TPM SUPPORT | VarOffset: 0x24, VarStore: Setup (0x1)
          Disabled: 0x0 (default)
          Enabled: 0x1

setup_var 0x24 0x1


## Hidden bios settings list
# I take no responsibility for anything that happens to your pc. 
CS PL1 Value Max
Thermal Throttling Level - Manual 
T0 Level - 0
T1 Level - 0 
T2 Level - 0
DDR PowerDown and idle counter 
For LPDDR Only: DDR PowerDown and idle counter
Both pcode/disable, ram powersaving^^^^
PowerDown Energy Ch0Dimm0 - 0    
PowerDown Energy Ch0Dimm1 - 0       
PowerDown Energy Ch1Dimm0 - 0        
PowerDown Energy Ch1Dimm1 - 0 
AP threads Idle Manner - Run loop
Boot performance mode - Turbo 
Interrupt Redirection Mode Selection - Round robin 
EPG DIMM Idd3N - 0                                                                                                                       
EPG DIMM Idd3P - 0
PEG0 Max Payload size - 256 TLP 
PEG1 Max Payload size - 256 TLP 
PEG2 Max Payload size - 256 TLP

# Disable:
all PEP’s - power saving
Bi-Directional PROCHOT (both of them
MachineCheck
HW Notification
Native ASPM - power saving
HDC Control - power saving
DMI Link ASPM Control - power saving
Enable RH Prevention
Intel (VMX) Virtualization Technology 
C states
Execute Disable Bit
SpeedStep
Enable Hibernation
PS2 Keyboard and Mouse
PS2 Devices Support 
ACPI Sleep State      
Enhanced C-states 
CState Pre-Wake
intel RMT State
Energy Efficient P-state
Energy Efficient Turbo
PCH Cross Throttling
PCI Express Clock Gating
TPM State
ASPM , OBFF, LTR , Power Down Unused Lanes (all 3 from each)
LAN Wake From DeepSx 
Wake on LAN Enable
PEG ASPM - power saving
PCH ASPM - power saving
DMI ASPM (both of them) - power saving
Port 61h Bit-4 Emulation - support to enhance system performance
Command Tristate - DRAM power saving
C-State Auto Demotion - Related to C-State
C-State Un-demotion - Related to C-State
Thermal Monitor - useless
HDCP Support - can fix monitor lag
WDT Enable - system timer that trying to recover pc after something happened like bsod
PECI - useless
Power Loading - useless
Hot-Plug Support - useless
AES
BCLK Aware Adaptive Voltage - fucks oc
RSR
Ptid support
ASF support 
Mrc Fast Boot
Memory Scrambler

# Enable:
Disable DSX ACPRESENT PullDown               
Limit CPUID Maximum         
Disable Energy Reporting       
Overclocking Lock 
CFG Lock
PCI Delay Optimization                                                                                     