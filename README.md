# Thinkpad X230 Clover Config for macOS 10.12 ~ 10.12.3
English

**Run macOS Sierra on your ThinkPad X230**

Video Tutorial : https://www.youtube.com/watch?v=MkGsSwpwheQ

**Last Edit 2017/3/5**

## Introduction

**Note**

 -  You might have to search for extra resources online to boot your macOS 10.12.2 Installation.
 -  The resources listed here are gathered from Rehabman, tonymacx86 and different sources. It's based on Bizzaro's x230-osx project. Link here: https://github.com/Bizzaro/x230-osx
 -  Sorry for my bad english and this complicated guide.
 -  Install macOS Sierra might cause Data Loss. **REMEMBER TO BACKUP BEFORE INSTALLING** I am not responsible for any damage caused on your Laptop.

------

**Guides/Examples (Credit Goes to tonymacx86 , InsanelyMac , Gurus , Rehabman , etc)**

 1. Brief Introduction : https://www.tonymacx86.com/threads/unibeast-install-macos-sierra-on-any-supported-intel-based-pc.200564/
 2.  Unsolved Problems : https://www.tonymacx86.com/threads/readme-common-some-unsolved-problems-in-10-12-sierra.202316/
 3. DSDT / SSDT guides : https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/
 4. Booting the OS X Installer with Clover : https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/
 5. Airport Injection : http://www.insanelymac.com/forum/topic/292542-airport-pcie-half-mini/
 6. Toleda's Wireless_Half_Mini Repository : https://github.com/toleda/wireless_half-mini
 

## Summary

**Hardware**

 - CPU : Intel Core i7 - 3520M
 - RAM : 8GB DDR3 1600MHz SO-DIMM
 - Storage : 250GB Intel SSD SATA 6Gb/s
 - Operating System : macOS Sierra 10.12.2
 - Bootloader : Clover v2.3k r3974 
 - EFI Firmware : 2.67
 - EC Firmware : 1.14
 - WLAN Card : AzureWave Broadcom BCM94352HMB 

-----

**Working**

 - Native Power Management 
 - Ethernet 
 - USB ports 
 - Battery status
 - Keyboard, TrackPoint
 - Intel Graphics HD 4000 
 - Backlight Control
 - Webcam
 - Bluetooth
 - Shutdown / Reboot
 - Audio
 - SSD Trimming
 - Microphone
 - AirDrop 
 - Broadcom 94352HMB WLAN card
 - Bluetooth
 - Appstore
 - iCloud
 - Siri
 - HandOff (With AirPort)
 - Universal Clipboard (With AirPort)
 - Facetime
 - iMessage
 
-----

**Not Working**

 - VGA Port
 - Ricoh Card Reader
 - Fingerprint Reader
 
-----

**Not Tested**

 - HDMI 
 - mini-DP

-----

**Bugs**

 - Boot Animation glitch 
 - Hibernation Wake

## Setup guide

**BIOS Configuration**

| Item                                                    	| Setting   	| Remarks                                                                                                       	|
|---------------------------------------------------------	|-----------	|---------------------------------------------------------------------------------------------------------------	|
| Config/Network/Wake On Lan                              	| Disabled  	| Not Supported.                                                                                                	|
| Config/USB UEFI BIOS Support                            	| Enabled   	| Important for booting into USB Installer for OS X/ macOS.                                                     	|
| Config/USB 3.0 Mode                                     	| Enabled   	| Enables USB 3.0                                                                                               	|
| Config/Power/Intel SpeedStep Technology                 	| Enabled   	| Enables Intel SpeedStep.                                                                                      	|
| Config/Power/Intel Rapid Start Technology               	| Disabled  	| This feature requires a hibernation partition (0xA0). Not supported on OS X / macOS.                          	|
| Config/Power/CPU Power Management                       	| Enabled   	| Enables CPU Power Management.                                                                                 	|
| Config/Serial ATA (SATA)/SATA Controller Mode Option    	| AHCI      	| Enables AHCI which is better for SSDs and HDDs.                                                               	|
| Security/Predesktop Authentication                      	| Optional  	| Fingerprint is not supported on macOS / OS X but you can still use it for waking your ThinkPad.               	|
| Security/Security Chip                                  	| Disabled  	| Disable it if you have a modified UEFI Firmware.                                                              	|
| Security/Memory Protection/Execution Prevention         	| Enabled   	| This enables NX which is required for macOS / OS X installations.                                             	|
| Security/Virtualization/Intel Virtualization Technology 	| Enabled   	| Delete boot argument named "dart=0" in config.plist if you set this as Disabled.                              	|
| Security/Virtualization/Intel VT-d Feature              	| Enabled   	| Delete boot argument named "dart=0" in config.plist if you set this as Disabled.                              	|
| Security/Secure Boot/Secure Boot                        	| Disabled  	| Not supported by Clover.                                                                                      	|
| Startup/Boot Mode                                       	| Quick     	| This is optional.                                                                                             	|
| Startup/UEFI / Legacy Boot                              	| UEFI Only 	| Reduces Confusion.                                                                                            	|
| Startup/UEFI / Legacy Boot/CSM Support                  	| No        	| Setting this key as Yes requires a CSM Video Driver in Clover to provide proper video output on macOS / OS X. Only change this to Yes if you are dual booting with Windows 7 and installed CSMVideoDxe Driver in /EFI/CLOVER/drivers64UEFI/. 	|

---------

## Install

1. Read this first (https://www.tonymacx86.com/threads/unibeast-install-macos-sierra-on-any-supported-intel-based-pc.200564/). Open Clover_v2.3k_r3974.pkg in the Tools directory of this repository and install it on your USB.

2.  Mount EFI System Partition of USB with EFI Mounter v3 (In tools folder). **Copy the whole repository to the root of your macOS Sierra USB Installer.**

3.  Open /Volumes/EFI/Clover/ , Unzip and Merge the CLOVER folder in the repository downloaded with the CLOVER folder in EFI System partition.

4.  Modify UEFI Settings according to the table above. For other items. keep their default values.

5.  Boot your macOS Installer USB by pressing F12 while booting.

6.  Go to step 4 of this guide (https://www.tonymacx86.com/threads/unibeast-install-macos-sierra-on-any-supported-intel-based-pc.200564/) and follow the instructions there.

**Special Reminder for i3 / i5 ThinkPad X230 users:**

-   Please delete SSDT.aml in /EFI/CLOVER/ACPI/patched and Copy NullCPUPowerManagement.kext to /EFI/CLOVER/kexts/ in EFI System Partition before booting the USB Installer. You might encounter problems if you don't do this.

--------

## Post-Install (Copied from Guide 1)

1.   Turn on the computer

2.   Press F12 to choose boot device.

3.   Choose USB.

4.   At the Boot Screen, choose your **new Sierra installation.**

5.   Complete macOS Sierra setup

6.   Open CLOVER folder (From this repository on your USB drive) , go to kexts/ folder and copy all files **EXCEPT NullCPUPowerManagement.kext** in that folder to your Desktop.

7.   Open Tools folder (From this repository) and run KextBeast. Install all kexts on your Desktop. The kext files on your Desktop can be deleted once the installation completed successfully.

8.   Run Kext Utility.app in Tools Folder.

9.   Backup EFI System partition of the SATA HDD/SSD in your ThinkPad. Run Clover_v2.3k_r3974.pkg in Tools Folder. Install it for **UEFI  Booting Only.**

10.  Run EFI Mounter v3.app in Tools Folder, Merge all files in CLOVER folder of this repository in EFI System Partiton of the SATA HDD/SSD in your ThinkPad.

11.  Open Clover Configurator, Configure SMBIOS of your machine. Guide here: https://www.tonymacx86.com/threads/an-idiots-guide-to-imessage.196827/. **Remember to select your Machine as MacBook Pro 9,2.**

12.  Install VooDooHDA, this is critical to enable your speakers. (Run VooDooHDA-2.8.8.pkg)

13.  Install All Necessary Kexts into /System/Library/Kexts, If you have broadcom WiFi please install FakePCID.kext included in the Kexts Video in the Tools Folder. These Kexts must be installed : realtekALC.kext , HDAEnabler.kext 

14.  Go to /System/Library/Extensions/VooDooHDA.kext/Contents/. Open Info.plist with PlistEditorPro / Xcode. Locate IOKitPersonalities and Change Input Gain to 0. This fixes the static noise from Headphones as well as enabling Microphones on HeadSets and Black Left.

15.  Run Kext Utility to fix permissions and rebuild Kernel Caches.

16.  Reboot now if you are using i7-3520M on your ThinkPad X230.

**For Users who have i3 / i5 ThinkPad X230, Please patch your SSDT to enable Native CPU Power Management**
(Credit goes to Piker-Alpha)

1.  Open Tools/ssdtPrGen.sh-Beta Folder , run ssdtPRGen.sh 
2.  Run this command  `sudo sh ssdtPRGen.sh`
3.  Obtain SSDT.aml from ~/Library/ssdtPRGen/
4.  Copy (Or Replace) it to /EFI/CLOVER/ACPI in your EFI System Partition of the SATA HDD/SSD in your ThinkPad.
5.  Delete NullCPUPowerManagement.kext in /EFI/CLOVER/kexts/ in the EFI System Partition of the SATA HDD/SSD in your ThinkPad.
6.  Reboot

--------------------------------------------------------------------------------------------

### Summary of problems and fixes

| Feature     | Problem        | Fixes |
| ------------- | ------------    | ----- |
| Sleep | Instant wake, device doesn't stay asleep | Apply DSDT USB3 instant wake 0x0, RTC patches |
| Audio | No devices in sound preferences | Inject patched AppleHDA, codec is ALC269VC_v3 , Layout ID is 1. Install HDAEnabler, realtekALC into /S/L/E |
| Battery and PM | No battery status, no native PM | Apply DSDT patch with Thinkpad x230i + Fix Mutex with non-zero synclevel | 
| GPU | Graphics not working natively | Apply DSDT patches for iGPU, brightness HD4000 + Low resolution | 
| USB | Ports not working/keeps device awake | Apply DSDT patches Ivy Bridge = Intel 7 series USB | 
| Power Off | Shutdown or Reboot takes a long time | Patch DSDT with system_Shutdown2.txt and system_Shutdown.txt |
| Sleep/power LED | LED remains in blinking state after wake | # add these lines into method _WAK after NVSS:<BR/>\_SB.PCI0.LPC.EC.LED (Zero, 0x80)<BR/>\_SB.PCI0.LPC.EC.LED (0x0A, 0x80)<BR/>\_SB.PCI0.LPC.EC.LED (0x07, Zero)|
| Brightness Control | Brightness control keys don't respond | # _Q15 (Fn+F8) brightness down key<BR/>into method label _Q15 replace_content<BR/>begin<BR/>    Notify(\_SB.PCI0.LPC.KBD, 0x0205)\n<BR/>    Notify(\_SB.PCI0.LPC.KBD, 0x0285)\n<BR/>end;<BR/><BR/># _Q14 (Fn+F9) brightness up key<BR/>into method label _Q14 replace_content<BR/>begin<BR/>    Notify(\_SB.PCI0.LPC.KBD, 0x0206)\n<BR/>    Notify(\_SB.PCI0.LPC.KBD, 0x0286)\n<BR/>end;|

--------------------------------------------------------------------------------------------

### AppleHDA injection methods (choose one from the list)
1. DSDT patch HDEF + IRQ (layout-id is 1) - preferred
2. Clover config.plist
3. HDAEnabler.kext  + realtekALC.kext

--------------------------------------------------------------------------------------------

### Other Resources ###

- www.google.com
- https://www.tonymacx86.com/forums/multi-booting.153/
- https://www.tonymacx86.com/forums/sierra-laptop-support.188/
