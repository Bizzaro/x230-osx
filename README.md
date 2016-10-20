## Thinkpad x230 OS X - running natively with full functionality.
**Updated: April 25 2016**

**Note:** This is **NOT** a spoonfeeding guide, other resources may be required to pull you up to speed. This page is meant to *reduce* the amount of googling and testing what works and what doesn't. 

### Specs
* Model: x230 2320-32U
* CPU: Intel i5-3210M 2.50GHz
* RAM: 12GB DDR3 
* Storage: 128GB SSD
* OS: OS X El Capitan 10.11.4
* Bootloader: Clover v2.3K R3320 UEFI
* EFI BIOS: 2.65 
* ECV BIOS: 1.14 

![alt text](https://raw.githubusercontent.com/Bizzaro/x230-osx/master/Screenshots/IMG_20160408_135226.jpg)
--------------------------------------------------------------------------------------------
### Working
* Power Management (C/P-states, fan RPM, speedstep, etc)
* Ethernet
* USB ports
* Battery status
* Keyboard, trackpad, trackpoint
* Sleep from menu + lid close sleep
* HD4000 (Brightness control with fn + k, fn + p and QE/CI active, external display with Mini-DP)
* Sound over Mini-DP -> HDMI 
* Wireless (Using USB mini WLAN adapter with native drivers from manufacturer)
* Sound/Audio, automatic headphone detection, mute, volume controls fully working
* Webcam
* Bluetooth

### Not working
* Built in mini-PCIE WLAN card (could swap card with Atheros 9280 and rebrand as Intel 6300)
* Card reader (never tried)
* Fingerprint reader 
* VGA (does not exist on real apple computers)

### Bugs
* Sound works on resume after you sleep from menu. Afterwards, lid close and resume, sound will work
* Boot screen logo glitch, reduce with custom logo = none, config.plist in Clover edit
* -xcpm boot argument will cause kernel panic (KP)

--------------------------------------------------------------------------------------------
### Summary of problems and fixes

| Feature     | Problem        | Fix (tldr DSDT patches are your friend) |
| ------------- | ------------    | ----- |
| Sleep | Instant wake, device doesn't stay asleep | Apply DSDT USB3 instant wake 0x0, RTC patches |
| Audio | No devices in sound preferences | Inject patched AppleHDA, codec is ALC297VC_v3 (layout-id in DSDT is hex, LayoutID in AppleHDA is dec) |
| Battery and PM | No battery status, no native PM | Apply DSDT patch with Thinkpad x230i + Fix Mutex with non-zero synclevel | 
| GPU | Graphics not working natively | Apply DSDT patches for iGPU, brightness HD4000 + Low resolution | 
| USB | Ports not working/keeps device awake | Apply DSDT patches Ivy Bridge = Intel 7 series USB | 
| Sleep/power LED | LED remains in blinking state after wake | # add these lines into method _WAK after NVSS:<BR/>\_SB.PCI0.LPC.EC.LED (Zero, 0x80)<BR/>\_SB.PCI0.LPC.EC.LED (0x0A, 0x80)<BR/>\_SB.PCI0.LPC.EC.LED (0x07, Zero)|
| Brightness Control | Brightness control keys don't respond | # _Q15 (Fn+F8) brightness down key<BR/>into method label _Q15 replace_content<BR/>begin<BR/>    Notify(\_SB.PCI0.LPC.KBD, 0x0205)\n<BR/>    Notify(\_SB.PCI0.LPC.KBD, 0x0285)\n<BR/>end;<BR/><BR/># _Q14 (Fn+F9) brightness up key<BR/>into method label _Q14 replace_content<BR/>begin<BR/>    Notify(\_SB.PCI0.LPC.KBD, 0x0206)\n<BR/>    Notify(\_SB.PCI0.LPC.KBD, 0x0286)\n<BR/>end;|
--------------------------------------------------------------------------------------------
### AppleHDA injection methods (choose one from the list)
1. DSDT patch HDEF + IRQ (layout-id is in hex) - preferred
2. Clover config.plist
3. HDAEnabler.kext 

--------------------------------------------------------------------------------------------

### AppleHDA patching methods (choose one from the list)
1. Modify AppleHDA.kext by itself, rewrite AppleHDA.kext in /S/L/E, injecting with any method
2. Live patch AppleHDA.kext + injecting DummyHDA.kext with any method

--------------------------------------------------------------------------------------------

### Sound after sleep issues

* CodecCommander loaded in /S/L/E w/ Kext Utility or with KextBeast + repair permissions/cache script

--------------------------------------------------------------------------------------------
### Commands to check AppleHDA, if anything returns empty = game over, restore default AppleHDA in /S/L/E and restart process

* Check AppleHDA kext load status: kextstat | grep -y applehda 
* sudo touch /System/Library/Extensions && sudo kextcache -u / 
* Use DCPIManager to check audio devices and if codec ID, revision, codec name are empty = bad
* Check custom loaded kext status: kextstat | grep -v com.apple

--------------------------------------------------------------------------------------------

### BIOS settings
| Item | Setting |
| ------------- | ------------ |
| Config/Network/Wake On Lan | Disabled |
| USB UEFI BIOS Support | Enabled |
| Always On USB | Disabled | 
| USB 3.0 Mode | Enabled | 
| Power Intel Rapid Start Technology | Disabled | 
| Serial SATA Controller Mode Option | AHCI |
| Security Predesktop Authentication | Disabled |
| Security Chip | Disabled | 
| Memory Protection Execution Prevention | Enabled | 
| Virtualization | Disabled |
| Fingerprint Reader | Disabled | 
| Anti Theft | Disabled | 
| Computrace | Disabled | 
| Secure Boot | Disabled | 
| Startup Network Boot | PCI Lan | 
| UEFI/Legacy Boot | UEFI Only | 
| CSM Support | Disabled | 
| Boot Mode | Quick |

--------------------------------------------------------------------------------------------
### Install
1. Follow tonymacx86 Unibeast steps to make your USB (I don't personally use MultiBeast).
http://www.tonymacx86.com/el-capitan-desktop-guides/172672-unibeast-install-os-x-el-capitan-any-supported-intel-based-pc.html
2. Mount EFI partition of USB with EFI Mounter v3 (from tonymacx86).
3. Copy Kexts to Kexts folder on the EFI partition.
4. Change BIOS settings (settings key is F1).
5. Boot USB (boot menu key is F12).

--------------------------------------------------------------------------------------------
### Post-install
1. Install Clover v2.3K R3320 UEFI .pkg - different version is OK, but must be UEFI.
2. Config.plist can be shared if you wish, personal preferences, except injections.
3. Patch your own DSDT's using guide on tonymacx86 from RehabMan, every system needs custom DSDT, no exceptions.
http://www.tonymacx86.com/el-capitan-laptop-support/152573-guide-patching-laptop-dsdt-ssdts.html
(trust me, it's worth the read)
4. Patch your own SSDT's, you could use the same if CPU models are identical.
http://www.tonymacx86.com/el-capitan-laptop-support/175801-guide-native-power-management-laptops.html
5. Put SSDT.aml and DSDT.aml inside ACPI folder, patched, in EFI partition of OS drive. 
6. TRIM Enabler (if using SSD, every system in 2016 should have one imo) 
7. Disable boot graphics glitches (http://www.tonymacx86.com/el-capitan-laptop-support/175799-fix-resolve-boot-screen-garble.html) and set custom logo to none in config.plist

Patch should be entered into config.plist/KernelAndKextPatches/KextsToPatch.

Comment: Boot graphics glitch

Name: IOGraphicsFamily

Find: <0100007517>

Replace: <010000eb17>

--------------------------------------------------------------------------------------------
### DSDT patches

* Battery: Thinkpad x230i
* iGPU: Brightness HD4000, Low resolution
* RTC fix 
* Fix Mutex with non-zero synclevel
* Ivy Bridge = 7 series USB
* USB3 instant wake 0x0
* If using DSDT inject use HDEF + IRQ provided with patcher

--------------------------------------------------------------------------------------------
### Other resources
http://www.tonymacx86.com/el-capitan-laptop-support/

Google is your best friend.

