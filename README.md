# Thinkpad X230 Clover Config for macOS 10.12.2


**Run macOS Sierra on your ThinkPad X230 **

**Last Edit 2016/12/28**

## Introduction

**Note**

 - You might have to search for extra resources online to boot your macOS 10.12.2 Installation.
 -  The resources listed here are gathered from Rehabman, tonymacx86 and different sources. It's based on Bizzaro's x230-osx project. Link here: https://github.com/Bizzaro/x230-osx

------

**Guides/Examples (Credit Goes to tonymacx86 , InsanelyMac , Gurus , Rehabman , etc)**

 - Brief Introduction : https://www.tonymacx86.com/threads/unibeast-install-macos-sierra-on-any-supported-intel-based-pc.200564/
 -  Unsolved Problems : https://www.tonymacx86.com/threads/readme-common-some-unsolved-problems-in-10-12-sierra.202316/
 - DSDT / SSDT guides : https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/
 - Booting the OS X Installer with Clover : https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/
 - Airport Injection : http://www.insanelymac.com/forum/topic/292542-airport-pcie-half-mini/
 - Toleda's Wireless_Half_Mini Repository : https://github.com/toleda/wireless_half-mini
 

## Summary

**Hardware**

 - CPU : Intel Core i7 - 3520M
 - RAM : 8GB DDR3 1600MHz SO-DIMM
 - Storage : 250GB Intel SSD SATA 6Gb/s
 - Operating System : macOS Sierra 10.12.2
 - Bootloader : Clover v2.3k r3763 
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
 
-----

**Not Working**

 - VGA Port
 - Ricoh Card Reader
 - Fingerprint Reader
 
-----

**Not Tested**

 - HDMI 
 - mini-DP
 - Facetime
 - iMessage

-----

**Bugs**

 - Boot Animation glitch 
 - Find my mac

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
| Startup/UEFI / Legacy Boot/CSM Support                  	| No        	| Setting this key as Yes requires a CSM Video Driver in Clover to provide proper video output on macOS / OS X. 	|

---------

## Install

1. Follow tonymacx86 Unibeast steps to make your USB. (https://www.tonymacx86.com/threads/unibeast-install-macos-sierra-on-any-supported-intel-based-pc.200564/).

2.  Mount EFI System Partition of USB with EFI Mounter v3 (In tools folder).

3.  Open /Volumes/EFI/Clover/ , Unzip and Copy the whole repository downloaded.

4.  Modify UEFI Settings according to the table above. For other items. keep their default values.

5.  Boot your macOS Installer USB by pressing F12 while booting.

--------

## Post-Install

### To Be Updated. ###
