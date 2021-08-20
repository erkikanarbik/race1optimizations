### MAXIMUS VIII HERO ASUS BIOS Version 3802

[Skylake Overlocking Results](https://docs.google.com/spreadsheets/d/1NIJmCiWa3pEIwNkUQN5-TG3HQ48o2eWFbi8eACARpLs/htmlview)

Intel(R) Core(TM) i7-6700K CPU @ 4.00GHzSkylake-S
CPU Clock	4600.0 MHz  (original: 4000 MHz, overclock: 14%)
CPU Multiplier	46x
North Bridge Clock	4200.0 MHz
Memory Bus	1600.0 MHz

DDR4 CMU16GX4M2C3200C16 Corsair DIMM 8 GB Ranks 1
Current Clock Speed	3200 MT/s

# Memory Timings	
+ CAS Latency (CL)	16T
+ RAS To CAS Delay (tRCD)	18T
+ RAS Precharge (tRP)	18T
+ RAS Active Time (tRAS)	36T
+ Row Refresh Cycle Time (tRFC)	560T
+ Command Rate (CR)	2T
+ RAS To RAS Delay (tRRD)	Same Bank Group: 7T, Diff. Bank Group: 6T
+ Write Recovery Time (tWR)	26T
+ Read To Read Delay (tRTR)	Different Rank: 7T, Different DIMM: 7T, Same Bank Group: 7T, Diff. Bank Group: 4T
+ Read To Write Delay (tRTW)	Different Rank: 11T, Different DIMM: 11T, Same Bank Group: 9T, Diff. Bank Group: 9T
+ Write To Read Delay (tWTR)	Different Rank: 9T, Different DIMM: 9T, Same Bank Group: 31T, Diff. Bank Group: 31T
+ Write To Write Delay (tWTW)	Different Rank: 9T, Different DIMM: 9T, Same Bank Group: 7T, Diff. Bank Group: 4T
+ Read To Precharge Delay (tRTP)	12T
+ Write To Precharge Delay (tWTP)	45T
+ Four Activate Window Delay (tFAW)	34T
+ Write CAS Latency (tWCL)	15T
+ CKE Min. Pulse Width (tCKE)	8T
+ Refresh Period (tREF)	12480T
+ Round Trip Latency (tRTL)	DIMM1: 67T, DIMM3: 67T
+ I/O Latency (tIOL)	DIMM1: 4T, DIMM3: 4T
+ Burst Length (BL)	8




Generally meant for ASUS ROG BIOS, but can be used as a guideline/reference for other BIOS’.
Improves latency, performance and overclocking capabilities.


## Boot
Boot Configuration
Fast Boot - [Enabled]
You may want to disable this if it affects USB port connectivity (mouse, keyboard etc.).
May lead to increased latency on older boards if [Enabled].
Boot Logo Display - [Auto]
3-7 sec
Boot up NumLock State - [Enabled]
Above 4G Decoding - [Disabled]
Wait For 'F1' If Error - [Enabled]
Option ROM Messages - [Enabled]
Interrupt 19 Capture - [Disabled]
Setup Mode - [Advanced Mode]
AMI Native NVMe Driver Support
[Off] ([On], if using NVMe SSD)
➤ CSM (Compatibility Support Module)
Compatibility Support Module Configuration
UEFI (GPT): <- Recommended
Launch CSM - [Disabled]

UEFI/CSM (GPT/MBR): <- Compatibility
Launch CSM - [Enabled]
Boot Device Control - [UEFI and Legacy OPROM]
Boot from Network Devices - [Ignore]
Boot from Storage Devices - [Ignore]
Boot from PCI-E/PCI Expansion Devices - [UEFI driver first]

Legacy (MBR): <- usually for older systems
Launch CSM- [Enabled]
Boot Device Control - [Legacy OPROM only]
Boot from Network Devices - [Ignore]
Boot from Storage Devices - [Ignore]
Boot from PCI-E/PCI Expansion Devices - [Ignore]
➤ Secure boot
OS Type - [Other OS]
➤ Key Management
PK Management - [Delete  key]
KEK Management - [Delete  key]
DB Management - [Delete  key]
DBX Management - [Delete  key]
Boot Option Properties
Boot Option #1
(Select your main OS drive)
## Advanced
# ➤ CPU Configuration
Hyper-Threading
[Enabled] <- Recommended for people with less than 6 cores (CPU)
+ Best for rendering and processing
+ Better streaming capabilities
+ Newer technology
- Slightly worse latency
- Higher CPU temperatures
- Lower FPS in some games, depending on game engine
- Prone to stuttering in some cases


[Disabled]
+ Better latency
+ Lower temps
+ Higher FPS, depending on game engine
+ Less stuttering (in most games)
+ Better overclocking capabilities
~ Usually beneficial for CPUs with 6 cores and above
- Worse rendering and processing performance


Hyper-Threading example:
Battlefield multiplayer games benefit from Hyper-Threading Enabled.
The benefits of Hyper-Threading, or lack thereof, heavily depends on the game engine.
 
Thermal Monitor - [Disabled]
Active Processor Cores - [All]
Intel Virtualization Technology - [Disabled]
Needed for 64 bit Virtual Machines
Hardware Prefetcher - [Enabled]
[Disabled] may lead to better multi core performance, at the cost of worsened single core performance.
Adjacent Cache Line Prefetch - [Enabled]
[Disabled] may lead to better multi core performance, at the cost of worsened single core performance.
Boot performance mode - [Max Non-Turbo Performance]
SW Guard Extensions (SGX) - [Disabled]
Tcc Offset Time Window - [Disabled]
➤ CPU - Power Management Control
Intel(R) SpeedStep(tm) - [Enabled]
No need to disable this, as it no longer affects overclocking like back in the day.
With SpeedStep disabled, some boards may not be able to lower the frequency at all and in others it limits the frequency steps.
CPU C-States - [Disabled]
Reduces latency a lot!
CFG Lock - [Disabled]
Intel(R) Speed Shift Technology - [Disabled]

Execute Disable Bit - [Disabled]
## Platform Misc Configuration
# Platform Misc Configuration
PCI Express Native Power Management - [Disabled]
PCH - PCI Express
PCI DMI ASPM - [Disabled]
ASPM - [Disabled]
L1 Substates - [Disabled]
PCI Express Clock Gating - [Disabled]
SA - PCI Express
DMI Link ASPM Control - [Disabled]
PEG - ASPM - [Disabled]

# System Agent (SA) Configuration / Memory Configuration
VT-d - [Disabled]
Memory Remap - [Enabled]
# Graphics Configuration
Primary Display - [PEG]
iGPU Multi-Monitor - [Disabled]
# DMI/OPI Configuration
DMI Max Link Speed - [Gen3]
# PEG Port Configuration
PCIE_X16/X8_1
PCIE_X16/X8_1 Link Speed - [Gen3]
PCIE_X8_2
PCIE_X8_2 Link Speed - [Gen3]

PCIE Spread Spectrum Clocking - [Disabled]
# PCH Configuration
# PCI Express Configuration
PCIe Speed - [Gen3]
IOAPIC 24-119 Entries - [Enabled]
Reduces interrupt latency.
# PCH Storage Configuration
Hyper kit1 Mode - (Disable if you don’t have one)
SATA Controllers - [Enabled]
SATA Mode Selection - [AHCI] <- RAID is unreliable and usually bad for gaming
S.M.A.R.T. Status Check - [Disabled]
Aggressive LPM Support - [Disabled]
Hot Plug - (Disable on all drives)
# Thunderbolt(TM) Configuration
Thunderbolt(TM) Support - (Disabled if unused)
Thunderbolt(TM) PCIe Support - (Disabled if unused)
# PCH-FW Configuration
# PTT Configuration
TPM Device Selection - [dTPM]
PTP Aware OS - [PTP Aware]
# Onboard Devices Configuration
HD Audio Controller - (Disable if using USB audio, otherwise leave Enabled)
DVI Port Audio - [Disabled] 
PCI-EX16_3 Bandwidth - [x4 Mode]
You may need to use [M.2 Mode] if your OS can’t detect your M.2 SSD. 
M.2 Configuration - PCI mode
Hyper M.2 x16: - [Disabled]
USB Power Delivery in Soft Off State (S5) - [Disabled]
Asmedia USB 3.1 Controller - [Enabled]
Use USB 2.0 ports for peripherals (mouse and keyboard).
Intel LAN Controller - [Enabled]
Intel LAN PXE Option ROM - [Disabled]
Connectivity Mode (Wi-Fi & Bluetooth) - [Disabled]
Wi-Fi - [Disabled]
Wi-FI has significantly more latency (and slower speeds) than LAN.
Bluetooth - [Disabled]
Serial Port - [Disabled]
➤ APM Configuration
ErP Ready - [Enable(S4+S5)]
Enabled state makes your PC use less power in shutdown state.
If Enabled USB ports, power on by mouse/keyboard will not work when shutdown
Restore AC Power Loss - [Power Off]
Power On By PS/2 Keyboard - [Disabled]
Power On By PCI-E/PCI - [Disabled]
Power On By Ring - [Disabled]
Power On By RTC - [Disabled]
➤ PCI-E Subsystem Settings
SR-IOV Support - [Disabled]
➤ Network Stack Configuration
Network Stack - [Disabled]
➤ USB Configuration
Legacy USB Support - [Disabled]
Enable this when installing Windows in Legacy MBR (disable after installation)
USB Keyboard and Mouse Simulator - [Disabled]
XHCI Hand-Off - [Disabled]
## Extreme Tweaker
ASUS Multicore Enhancement - [Enabled]
Use [OFF] if you’re doing a manual overclock.

# Internal CPU Power Management
Intel SpeedStep - [Disabled]
Turbo Mode - [Enabled]