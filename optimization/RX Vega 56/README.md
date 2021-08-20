### Vega 56 optimizations

Vega 64 BIOS 

## [Driver Mod] NimeZ Radeon Software 21.8.1
[Adrenalin 21.8.1](https://drive.google.com/file/d/1LmoinR4BmsBRxpdIuHak0FOROlyn2m3P/view?usp=sharing)
[Dependency](https://drive.google.com/drive/folders/10BhtXSQ3LevRtBOOSONh0h0oahzK0RVO?usp=sharing)
# Features
 * Deodexed AMD Radeon Setup, faster install execution
 * Pre-Signature Driver, means driver signature enforcements or test signing is unnecessary
 * Tweaked DirectX 11 and 9 Performance
 * Tweaked OpenGL Performance, performance maybe different depending on GPU compute power
 * Display Dithering enabled by default on HDMI, DVI, and DisplayPort interface
 * Ultra Low Power State (ULPS) Disabled for Stability
 * Tweaked GPU Queue upto 8 by default
 * Optimized Mipmap Rendering
 * Improved Multithread Workers scalable from 4 threads to 16 threads
 * Enhanced Sync enabled by default (if supported by gpu)
 * Optimized Driver Catalog & Binaries

# Installation
 * Download & extract the drivers from google drive folder.
 * Download the Dependencies Adrenalin UI. Depending on driver version, you can reuse it for future release if match the requirements.
 * Run the NZSetup as Administrator
 * Follow the installation guide
 * The setup will ask you to place the Adrenalin UI Installer on Dependencies folder called ccc2_Install.exe

# Undervolt Overclock profile (also attached)
GPU_P0=852 MHz; 800mV
GPU_P1=991 MHz; 900mV
GPU_P2=1084 MHz; 925mV
GPU_P3=1269 MHz; 952mV
GPU_P4=1312 MHz; 956mV
GPU_P5=1474 MHz; 962mV
GPU_P6=1539 MHz; 969mV
GPU_P7=1589 MHz; 975mV
Mem_P0=167 MHz; 800mV
Mem_P1=500 MHz; 800mV
Mem_P2=800 MHz; 950mV
Mem_P3=1100 MHz; 953mV

# AMD Registry Tweaks
HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000:
- DisableBlockWrite 0 (Enables faster writing of graphics information to the VRAM)
- DisableDrmdmaPowerGating 1 (Disables power saving)
- EnableUlps 0 (Disables power saving)
- KMD_DeLagEnabled 1 (Enables Anti-Lag)
- KMD_EnableComputePreemption 0 (Disables preemption)
- PP_SclkDeepSleepDisable 1 (Disables power saving)
- PP_ThermalAutoThrottlingEnable 0 (Disables power saving)

HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD:
- Main3D_DEF 0 (Sets prerendered frames to 0)
- Main3D 30 00 (Sets prerendered frames to 0)
- ShaderCache 32 00 (Enables shader cache)
- Tessellation_OPTION 32 00 (Sets tessellation mode to override application settings)
- Tessellation 31 00 (Sets maximum tessellation level to off)
- VSyncControl 30 00 (Forces V-Sync off)