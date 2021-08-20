### Interrupt affinity

Microsoft’s [Interrupt-Affinity Policy Tool](https://drive.google.com/open?id=1_XHjXsWJOIoC5nu07bYQ-5padFQ5CQWI)
One can set affinity for a driver’s interrupts. Don’t go overboard. You may actually make the system perform worse if you randomly start setting affinities or set too many devices onto a single core.
Do not change the NVME driver or SATA driver. You will have to boot in safe mode to fix the registry entry. On Windows 7 you can change the SATA driver, but I’m not sure about NVME.
Default install dir: C:\Program Files (x86)\Microsoft Corporation\Interrupt Affinity Policy Tool (use the x64 executable)
Run as admin
Select a driver and “Set Mask” (this is for IrqPolicySpecifiedProcessors)
Select the cores you want the driver to be executed on
If you have HT or SMT, select every other CPU to ensure one core doesn’t get two interrupts at once, there is more nuance to this but generally you don’t want to share execution units
If you have a Ryzen CPU, try to keep the drivers pinned to one CCX only (CPUs 0-3 and 4-7 on an eight-core, 0-2 and 3-5 on a six core)
Press the “Advanced…” button for other choices if you wish (not really useful on single-socket systems)
Do not restart any drivers for storage devices or PCIe controllers with storage devices attached, restart your PC instead to prevent risk of data loss
Open Device Manager and click View→Devices by connection then expand all devices, you will need this to see which devices are under certain PCIe controllers

These devices are fine to set, as they are most responsible for input/performance:
GPU
Set the PCIe controller that the GPU is connected to onto the same core
Setting the graphics card onto a single core gives the best performance, however setting it to a busy core will result in worse performance. You will have to find out which core performs best by benchmarking, such as using menu FPS or something very consistent with high FPS (300+) that you can reproduce easily
Keep a mental list of cores that are the most performant
USB controllers (also works best on a single core, test polling using MouseTester)
PCIe Controllers (you should set the PCIe controller onto the same cores that you set its devices as, i.e. if you set the GPU to core 0, you should set the PCIe controller as core 0 as well)

This tool can also show hidden devices in MSI util if you change the setting at least once using this program
Every time you update a driver such as the Nvidia driver you will have to change the affinity



To check the device ID, open Device Manager, click View and select “Devices by connection,” right click on a device, Properties, Details, Physical Device Object Name


Benchmarking affinities or driver latency
Use MouseTester for benchmarking xHCI/EHCI controller affinities
Use liblava-demo to benchmark GPU affinities, or anything else with extremely high FPS
Use CapFrameX or something similar to benchmark average FPS, 1% and .1% lows
Use xperf to benchmark execution latencies for each driver. A script will make using it very easy
My simple batch script which includes a Windows 7 download link without having to install all of ADK
Timecard's script which uses PowerShell if you prefer that instead
