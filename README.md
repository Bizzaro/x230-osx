# Thinkpad X230 Clover Config for macOS 10.12 ~ 10.12.5

**View 10.13 branch to learn how to install High Sierra Public Beta.**

**Run macOS Sierra on your ThinkPad X230**

**Video Tutorial : https://www.youtube.com/watch?v=MkGsSwpwheQ (For 10.12)**

**Last Edit 2017/07/19**

## Introduction

**Note**

 -  Extra resources from online sources might be required.
 -  The WiFi Card used in this tutorial is Azurewave CE123-H. (BIOS whitelist removed)
 -  The resources listed here are gathered from Rehabman, tonymacx86 and different sources. It's based on Bizzaro's x230-osx project. Link here: https://github.com/Bizzaro/x230-osx
 -  Sorry for my bad english and this complicated guide.
 -  Install macOS Sierra might cause Data Loss. **REMEMBER TO BACKUP BEFORE INSTALLING**.
 -  This guide comes with absolutely no warranty. I am not responsible for any damage in hardware , software or data loss on your laptop. Take your own risk.

------

**Update**

- Update config.plist to fix BackLight
- [FIXED on 18/7/2017] Screen brightness is working on macOS 10.12.5 but it is not adjustable.(maybe Night Shift messed up the screen brightness mechanism), there is a workaround here (credit goes to Rehabman): https://www.tonymacx86.com/threads/guide-laptop-backlight-control-using-applebacklightinjector-kext.218222/


------

**Guides/Examples (Credit Goes to tonymacx86 , InsanelyMac , Gurus , Rehabman , etc)**

 1. Brief Introduction : https://www.tonymacx86.com/threads/unibeast-install-macos-sierra-on-any-supported-intel-based-pc.200564/
 2.  Unsolved Problems : https://www.tonymacx86.com/threads/readme-common-some-unsolved-problems-in-10-12-sierra.202316/
 3. DSDT / SSDT guides : https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/
 4. Booting the OS X Installer with Clover : https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/
 5. Airport Injection : http://www.insanelymac.com/forum/topic/292542-airport-pcie-half-mini/
 6. Toleda's Wireless_Half_Mini Repository : https://github.com/toleda/wireless_half-mini
 7. AppleHDA Patching : http://forum.osxlatitude.com/index.php?/topic/1946-complete-applehda-patching-guide/
 8.  iMessage / FaceTime : https://www.tonymacx86.com/threads/how-to-fix-imessage.110471/
 9.  iDiot's guide to iMessage / FaceTime : https://www.tonymacx86.com/threads/an-idiots-guide-to-imessage.196827/
 10. Everymac Lookup : http://www.everymac.com/ultimate-mac-lookup/
 11. Enable Intel WiFi without hardware flashing BIOS :https://www.tonymacx86.com/threads/rebranding-intel-centrino-n6205-into-ar5b95-and-fake-pci-id.203658/#post-1339270  (credit goes to Rehabman and Tasos Sofi)
 

## Summary

**Specs**

 - CPU : Intel Core i7 - 3520M
 - RAM : 8GB DDR3 1600MHz SO-DIMM
 - Storage : 250GB Intel SSD SATA 6Gb/s
 - Operating System : macOS Sierra 10.12.5
 - Bootloader : Clover v2.4k r4097 
 - EFI Firmware : 2.67 (Modified)
 - EC Firmware : 1.14
 - WLAN Card : AzureWave CE-123H (Broadcom BCM94352HMB) 

-----

**Working**

 - Native Power Management 
 - Ethernet 
 - USB ports 
 - Battery status
 - Keyboard, TrackPoint
 - Intel Graphics HD 4000 
 - Webcam
 - Bluetooth
 - Shutdown / Reboot
 - Audio
 - SSD Trimming
 - Microphone
-  Headset
 - Bluetooth
 - Appstore
 - iCloud
 - Siri
-  AzureWave CE-123H WLAN card
 - AirDrop
 - HandOff (With AirPort)
 - Universal Clipboard (With AirPort)
 - BackLight
 
-----

**Not Working**

 - VGA Port
 - Ricoh Card Reader
 - Fingerprint Reader
 - Facetime
 - iMessage
 
-----

**Not Tested**

 - HDMI 
 - mini-DP

-----

**Bugs**

 - Boot Animation glitch 
 - Hibernation Wake
 - Backlight Control (Figuring solution)

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

## Create USB Installer 

1. Read this first (https://www.tonymacx86.com/threads/unibeast-install-macos-sierra-on-any-supported-intel-based-pc.200564/). Open Clover_v2.4k_r4114.pkg in the Tools directory of this repository and install it on your USB.

2.  Mount EFI System Partition (ESP) of USB with EFI Mounter v3 (In tools folder). **Copy the whole repository to the root of your macOS Sierra USB Installer.**

3.  Open /Volumes/EFI/Clover/ , Copy and Replace the entire `EFI/CLOVER` Folder in the ESP of your USB Drive with `EFI/CLOVER` folder in this repository.

4.  Open `EFI/CLOVER/config.plist` in the ESP of your USB Drive. Run CloverConfigurator included in the `Tools/` folder in the repository. Generate Serial Number, BoardSerialNumber, SmUUID in SMBIOS tab. Fill in CustomUUID in SystemParameters Tab.

**Special Reminder for users who have AzureWave CE-123H**

-  Before booting into the USB Installer, replace the file : `EFI/CLOVER/config.plist` with `WiFi-4352/config.plist`. Generate Serial Number, BoardSerialNumber, SmUUID in SMBIOS tab. Fill in CustomUUID in SystemParameters Tab.


**Special Reminder for i3 / i5 ThinkPad X230 users:**

-   Before booting into the USB Installer, **Please delete `SSDT.aml`** in `/EFI/CLOVER/ACPI/patched` in the ESP of your USB Installer and Copy NullCPUPowerManagement.kext to`/EFI/CLOVER/kexts/Other` in the ESP of your USB Installer before booting the USB Installer. You might encounter problems if you don't do this.

# Install

1.  Modify UEFI Settings according to the table above. For other items. keep their default values.

2.  Boot your macOS Installer USB by pressing F12 while booting.

3.  Go to step 4 of this guide (https://www.tonymacx86.com/threads/unibeast-install-macos-sierra-on-any-supported-intel-based-pc.200564/) and follow the instructions there.

4.  Follow the instructions shown in macOS Sierra. 

--------

## Post-Install (Copied from Guide 1)

1.   Turn on your ThinkPad.

2.   Press F12 to choose boot device.

3.   Choose USB.

4.   At the Boot Screen, choose your **new Sierra installation.**

5.   Complete macOS Sierra setup.

## Post-Install (Kexts Installation)

1.   Copy all files inside `Kexts/` folder in this repository to your Desktop. If you are using AzureWave CE-123H, copy the Kexts in `WiFi-4352/Extra-Kexts/` to your desktop as well.

2.   Open `Tools `folder from this repository and run KextBeast. Install all kexts on your Desktop. The kext files on your Desktop can be deleted once the installation completed successfully. 

3.   Install aDummyHDA.kext via KextBeast.

5.  Run `Kext Utility.app` in `Tools/` folder from this repository. Type your password and fix Kexts Permissions and rebuild cache.

6.  Run EFI Mounter v3.app in `Tools` Folder. Mount the ESP of the USB Installer and the ESP of the local drive, (SSD/HDD) in your ThinkPad.

7.   Copy `EFI/CLOVER` folder from the **ESP of your USB Installer** to 
the ESP of your local drive. (Where Sierra is installed on)

8.  Check the SMBIOS of `EFI/CLOVER/config.plist` in your local drive. If they are empty, regenerate another one. Make sure you filled in BoardSerialNumber, SerialNumber and SmUUID. Also, check the CustomUUID in SystemParameters. Make sure it has a random UUID filled in.

**For Users who have i3 / i5 ThinkPad X230, Please patch your SSDT to enable Native CPU Power Management**
(Credit goes to Piker-Alpha)

1.  Open Tools/ssdtPrGen.sh-Beta Folder , run ssdtPRGen.sh 

2.  Run this command  `sudo sh ssdtPRGen.sh`

3.  Obtain SSDT.aml from ~/Library/ssdtPRGen/

4.  Copy (Or Replace) it to /EFI/CLOVER/ACPI in your EFI System Partition of the SATA HDD/SSD in your ThinkPad.

5.  Delete `NullCPUPowerManagement.kext` in `/EFI/CLOVER/kexts/` in the EFI System Partition of the SATA HDD/SSD in your ThinkPad.

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
| Power Off | Shutdown or Reboot takes a long time | Patch DSDT with system_Shutdown2 and system_Shutdown |
| Sleep/power LED | LED remains in blinking state after wake | # add these lines into method _WAK after NVSS:<BR/>\_SB.PCI0.LPC.EC.LED (Zero, 0x80)<BR/>\_SB.PCI0.LPC.EC.LED (0x0A, 0x80)<BR/>\_SB.PCI0.LPC.EC.LED (0x07, Zero)|
| Brightness Control | Brightness control keys don't respond | # _Q15 (Fn+F8) brightness down key<BR/>into method label _Q15 replace_content<BR/>begin<BR/>    Notify(\_SB.PCI0.LPC.KBD, 0x0205)\n<BR/>    Notify(\_SB.PCI0.LPC.KBD, 0x0285)\n<BR/>end;<BR/><BR/># _Q14 (Fn+F9) brightness up key<BR/>into method label _Q14 replace_content<BR/>begin<BR/>    Notify(\_SB.PCI0.LPC.KBD, 0x0206)\n<BR/>    Notify(\_SB.PCI0.LPC.KBD, 0x0286)\n<BR/>end;|

--------------------------------------------------------------------------------------------

### AppleHDA injection methods (choose one from the list)
These 3 tasks must be done to make sure Audio working out of box.
1. DSDT patch HDEF + IRQ (layout-id is 12)
2. Up to date `config.plist`
3. `HDAEnabler.kext`  + `realtekALC.kext`+ `VooDooHDA.kext` in Clover/kexts/Others

--------------------------------------------------------------------------------------------

### About the BackLight issue in 10.12.4~10.13
The backlight issue can be fixed by updating config.plist
Alternatively, the following patches are required:
1. Adding SSDT-PNLF.aml and Update DSDT.aml (Removed all BackLight patches), included in EFI folder in this repository.
2. Removing IntelBackLight.kext in Clover/kexts/Others
3. Adding patches to config.plist
For details please see here: https://www.tonymacx86.com/threads/guide-laptop-backlight-control-using-applebacklightinjector-kext.218222/

** Please note that AppleBacklightInjector.kext is not needed. Once you finished the steps mentioned, BackLight will work as you boot up the machine.

### Other Resources ###

- www.google.com
- https://www.tonymacx86.com/forums/multi-booting.153/
- https://www.tonymacx86.com/forums/sierra-laptop-support.188/
- http://www.insanelymac.com/forum/files/file/496-applehda-patcher/
- http://www.insanelymac.com/forum/files/file/496-applehda-patcher/
- https://www.youtube.com/watch?v=JB-KzDBhqTA (Credit goes to Definitely Sinking)
