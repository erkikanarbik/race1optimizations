### Race1 Optimization

[![ballout](Optional%20Tweaks/bg2.jpg)]

# Disable Cortana, Telemetry & Windows Updates
 * Run "disable cortana" via NSudo (everytime you use NSudo, check the box "Enable All Privileges")
 * Run script "disable windows updates" via NSudo
 * Run "disable telemetry" in NSudo
 * Update your LAN driver
 * Open Network Adapter settings
 * Uncheck everything except "TCP/IPv4" (if you need / use "TCP/IPv6" dont uncheck this one either)
 * Restart
 * Open TCP Optimizer as admin
 * Choose in "General" your active internet adapter
 * Go to the tab "MTU/ latency"
 * Click "Largest MTU"
 * Remember the number "You can set your MTU too <number>"
 * Open CMD as admin
 * Type: netsh interface ipv4 show subinterface
 * Type: netsh interface ipv4 set subinterface “Ethernet” mtu=1492 store=persistent
 * Replace "Ethernet" with your adapter name & my MTU value with yours
 * Recheck after that with : netsh interface ipv4 show subinterface



# Disable Nagle-Algorithm
Nagle's algorithm is a means of improving the efficiency of TCP/IP networks by reducing the number of packets that need to be sent over the network. This will reduce your online gaming latency significantly by increasing the frequency of TCP acknowledgements sent to the game server.

 * Open the command prompt and type IPCONFIG
 * Look for IPv4 Address and write it down or remember it
 * Open Regedit and navigate to HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters\Interfaces
 * Looks through each of the keys under Interfaces until you find your IPv4 Address listed under DhcpIPAddress or IPAddress
 * Once you find the Interface containing your ip, create two new DWORD values with a Value of 1
 * TcpAckFrequency
 * TCPNoDelay
[![ballout](Optional%20Tweaks/nagle.jpg)]
 * Reboot for changes to take effect


## Useful links

[1. Hosts file for privacy](https://someonewhocares.org/hosts/)

[2. Intel Ethernet Networking Drivers](https://www.techpowerup.com/download/intel-ethernet-networking-drivers/)


# Improve Network Throughput

Compound TCP (CTCP) is a Microsoft algorithm that was introduced in Windows Vista and all following Windows Editions. It is designed to aggressively adjust the sender's congestion window to optimize TCP for connections with large bandwidth-delay products while trying not to harm fairness. This simple command prompt tweak simply enables CTCP. Best advice is to turn any network applications off and run a default test at SpeedOf.Me, save those results, do the tweak, then test again. The findings were a very heartbeat choppy type net graph into a flat line solid connection, cable and fiber were tested.

 * First open the command prompt with run as administrator
 * Then right click paste the following and hit enter:
 * netsh int tcp show global
 * A list of parameters and there settings will be displayed. The one that will be changed is Add-On Congestion Control Provider
 * To change it from None To CTCP paste the following and hit enter:
 * netsh int tcp set global congestionprovider=ctcp
 * if you get a "parameter is incorrect" message while setting ctcp, use the following instead
 * netsh int tcp set supplemental custom congestionprovider = ctcp
 * if it still doesn't work, it's not going to, they are thinking about re-adding it to certain versions of windows 10
 * Reboot
 * After reboot, open an elevated command line and type the following command:
 * netsh int tcp show global
 * In the list, confirm these have been set:
 * Add-On Congestion Control Provider : CTCP
 * Run tests at both websites again to confirm
 * To undo this process do step 4 and change the ctcp value to none


 Intel Network Adapter Settings
Offloading features allows the network card to handle certain functions of the packet handling process reducing the overall cpu consumption, ideally allowing more cpu time for other tasks and your games.

Adaptive Inter-Frame Spacing
Disabled
Flow Control
Disabled
Interrupt Moderation and Moderation Rate
My personal recommendation is to set this to Medium or leave it on Adaptive (default)
Try medium for a week or more then consider changing it if you believe something to be wrong from a network perspective.
A Medium interrupt moderataion value provided an acceptable DPC/ISR latency during both fully loaded 1Gbps TCP network simulation and also UDP communications during real world scenarios and during iperf tests which matched the traffic characteristics of the simulated games, Counter-Strike CS:GO and CS 1.6.
Many will recommend turning interrupt moderation off (including this one originally) however the increased interrupt rate can impact the users experience (perceived input response) during higher load where there is a combined use of realtime audio, gpu workloads, application and OS dependant cpu usage, usb device input and network throughput. If the intended performance measurement was not primarily reliant on user input response and stricly network/cpu based workload then having interrupt moderataion off would likely be ideal for lowest possible latency.
See Research
IPv4 Checksum Offload
RX & TX Enabled
Jumbo Packet
Disabled
Large Send Offload V2 (IPv4)
Disabled
Large Send Offload V2 (IPv6)
Disabled
Receive Side Scaling
Enabled
Maximum Number of RSS Queues
N Queues, Use 2 or more queues when available.
Packet Priority & VLAN
Both Enabled
Receive Buffers
Increase if you have extra memory to spare, recommended 1024 or higher.
A lower value will results in dropped packets and decreased performance however a higher value could result in increased buffering during certain workloads, as per Microsoft's Performance Tuning Network Adapters guide.
Monitor your dropped packet rates during gameplay and adjust if necessary, a slightly higher value from the default should not result in increased buffering unless the traffic conditions reduce the rate at which data can be transmitted, often due to high load or congestion.
Transmit Buffers
Increase if you have extra memory to spare, recommended 1024 or higher.
A lower value will results in dropped packets and decreased performance however a higher value could result in increased buffering during certain workloads, as per Microsoft's Performance Tuning Network Adapters guide
Monitor your dropped packet rates during gameplay and adjust if necessary, a slightly higher value from the default should not result in increased buffering unless the traffic conditions reduce the rate at which data can be transmitted, often due to high load or congestion.
TCP Checksum Offload (IPv4)
Enabled
TCP Checksum Offload (IPv6)
Enabled
UDP Checksum Offload (IPv4)
Enabled
UDP Checksum Offload (IPv6)
Enabled
Power Saving Options
Disable all power saving options in drivers and for the adapter, more options are available in the latest Intel drivers sets.


Ensure Network Throttling Index feature is enabled
Recommendation: Set a value between 10 and 20 decimal, e.g. 15mbps-30mbps HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\NetworkThrottlingIndex