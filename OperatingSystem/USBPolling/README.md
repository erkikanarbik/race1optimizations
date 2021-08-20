### USB Polling Rate

If your mouse software does not include a way to raise your usb polling rate you can do it manually here. By default every Windows Operating system has your usb polling rate set to 125hz which is equal to 125 samples per second or 8ms delay. That's fine for most people but that's not going to fly. Especially if your mouse reads 2000 Dots Per Inch or above, there is no way its reading fast enough. So with this page you can raise that rate in the order of 125hz, 250hz, 500hz, & 1000hz. 1,000hz is equal to 1 ms of delay by the way. I personally have burned out a usb port on two motherboards running @1000hz so I now only use 500hz which is sufficient in my opinion but chose whichever you want.

## Guide
[USB Tool](https://drive.google.com/file/d/0B4qyrvcqkG3uUmlvWFFHdzJLOW8/view?resourcekey=0-8jd6hhopCPVkBiI4PI)


 * For Windows XP and Vista use usbrate.exe in the .zipFor Windows 7 & 8 do the following stepsRun Driver Signature Enforcement Overrider (dseo13b.exe) and choose Enable Test Mode
 * Extract HIDUSBF to some folder, right click on HIDUSBF.inf and choose Install
 * Run Setup.exe from HIDUSBF’s folder, check the Filter on Device box and select your desired polling rate
 * Hit Install Service then Restart
 * Run Driver Signature Enforcement Overrider (dseo13b.exe) again, choose Sign a System file and insert full path to the installed HIDUSBF.sys file, usually:
 * C:\Windows\System32\Drivers\HIDUSBF.sys
 * Restart your computer and enjoy
 * Verify by using Mouse Rate mouserate.exe
 * To remove the test mode watermark, run Driver Signature Enforcement Overrider and choose Disable Test Mode





