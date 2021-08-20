### Device manager optimizations

DeviceCleanup is a useful utility to remove detached/ghost devices, very safe to do. You can remove devices you are absolutely sure you won’t use anymore, so to use with caution, do not delete something you MIGHT need in the future
Use Ethernet and disable your Wifi card. It causes latency spikes, so disabling it is better. 

# Device Manager
 * Open Device Manager
 * Sort devices by connection
 * Right click on every single USB device
 * Go to "Power management" (option is not available for every device/controller)
 * Uncheck the two boxes in Power management if checked like here
 * Disable every unused PCI-to-PCI Bridge
 * Disable the audio device on the PCI bridge with your GPU

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

