
# Thinkpad X230 Clover Config for macOS 10.13.1

**English**

**中文版請向下捲動**

**Run macOS Sierra on your ThinkPad X230**

Video Tutorial : 
https://youtu.be/kGhZUovKYFM (10.13.1)
https://youtu.be/MkGsSwpwheQ (10.12.x)

**Last Edit 2017/11/17**



## Introduction

**Note**

 -  Extra resources from online sources might be required.
 -  The WiFi Card used in this tutorial is Azurewave CE123-H. (BIOS whitelist removed)
 -  The resources listed here are gathered from Rehabman, tonymacx86 and different sources. It's based on Bizzaro's x230-osx project. Link here: https://github.com/Bizzaro/x230-osx
 -  Sorry for my bad english and this complicated guide.
 -  Install macOS Sierra might cause Data Loss. **REMEMBER TO BACKUP BEFORE INSTALLING**.
 -  This guide comes with absolutely no warranty. I am not responsible for any damage in hardware , software or data loss on your laptop. Take your own risk.

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
 - Operating System : macOS Sierra 10.13.1
 - Bootloader : Clover v2.4k r4114 
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
 - Facetime
 - iMessage
 - HDMI 
 - mini-DP 
 - Backlight Control (Figuring solution)
-----

**Not Working**

 - VGA Port
 - Ricoh Card Reader
 - Fingerprint Reader

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

-------------------------
  
# ThinkPad X230 的 黑蘋果 macOS 10.13.1 Clover 組態設定

**中文**

**Scroll Up for English Version**

**在你的ThinkPad X230執行 macOS**

影片教學 :
https://youtu.be/kGhZUovKYFM (10.13.1)
https://youtu.be/MkGsSwpwheQ (10.12.x)

**最後更新 2017/11/17**

## 簡單介紹

**注意**

 -  你可能需要從網絡查找更多資料來完成安裝
 -  這個教學採用的無線網路卡是 Azurewave CE123-H (已從BIOS移除白名單)
 -  這裡的資源採集自 Rehabman, tonymacx86 和其他地方。 本教學是基 Bizzaro's x230-osx 的計畫，連結是: https://github.com/Bizzaro/x230-osx
 -  如果這個教學很複雜，很抱歉
 -  安裝 macOS 可能導致資料遺失 **安裝前請必須備份**.
 -  本教學沒有包含任何保養，我對您的筆記本電腦上的硬件，軟件或數據丟失造成的任何損壞概不負責。安裝macOS 是冒自己的風險。

------

**其他教學/安裝例子 (資料由 tonymacx86 , InsanelyMac , Gurus , Rehabman 等來源提供)**

 1. 簡介 : https://www.tonymacx86.com/threads/unibeast-install-macos-sierra-on-any-supported-intel-based-pc.200564/
 2.  未能解決的問題 : https://www.tonymacx86.com/threads/readme-common-some-unsolved-problems-in-10-12-sierra.202316/
 3. DSDT / SSDT 教學 : https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/
 4. 如何使用Clover 載入 macOS : https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/
 5. 植入Airport 核心(內核)延伸 : http://www.insanelymac.com/forum/topic/292542-airport-pcie-half-mini/
 6. Toleda 的 半高無綫網絡卡數據庫 : https://github.com/toleda/wireless_half-mini
 7. AppleHDA補丁 : http://forum.osxlatitude.com/index.php?/topic/1946-complete-applehda-patching-guide/
 8.  iMessage / FaceTime : https://www.tonymacx86.com/threads/how-to-fix-imessage.110471/
 9.  iDiot's guide to iMessage / FaceTime : https://www.tonymacx86.com/threads/an-idiots-guide-to-imessage.196827/
 10. Everymac 查看 : http://www.everymac.com/ultimate-mac-lookup/
 11. 在不修改BIOS 下啟用 Intel 無綫網絡卡 :https://www.tonymacx86.com/threads/rebranding-intel-centrino-n6205-into-ar5b95-and-fake-pci-id.203658/#post-1339270  (credit goes to Rehabman and Tasos Sofi)
 

## 總觀

**硬件配置**

 - 中央處理器 : Intel Core i7 - 3520M
 - 主記憶體 : 8GB DDR3 1600MHz SO-DIMM
 - 儲存裝置 : 250GB Intel SSD SATA 6Gb/s
 - 作業系統 : macOS Sierra 10.13.1
 - 開機載入器 : Clover v2.4k r4114 
 - EFI 韌體 : 2.67 (經過修改)
 - 嵌入控制器 韌體 : 1.14
 - WLAN Card : AzureWave CE-123H (Broadcom BCM94352HMB) 

-----

**正常運作的功能**

 - 原生能源管理 
 - 以太網卡 
 - USB 
 - 電池狀態（百份比）
 - 鍵盤, 小紅點
 - Intel Graphics HD 4000 集成顯示
 - 網絡攝影機
 - 藍牙
 - 關機 / 重新開機
 - 音效
 - SSD Trimming
 - Microphone
-  耳機
 - Appstore
 - iCloud
 - Siri
-  AzureWave CE-123H 無線網路卡
 - AirDrop
 - HandOff (連 AirPort)
 - 通用剪貼板 (連 AirPort)
 - 螢幕背光調節
 - HDMI 
 - mini-DP
  - Facetime
 - iMessage
 
-----

**不能正常運作的功能**

 - VGA Port
 - Ricoh 內置讀卡器
 - 指紋識別器

-----

**漏洞**

 - 殘缺的開機畫面 
 - 無法從休眠喚醒

## 安裝指引

**BIOS 設定**

| 項目                                                    	| 設定	| 備註                                                                                                       	|
|---------------------------------------------------------	|-----------	|---------------------------------------------------------------------------------------------------------------	|
| Config/Network/Wake On Lan                              	| Disabled  	| 不支援                                                                                                	|
| Config/USB UEFI BIOS Support                            	| Enabled   	| 對於從USB載入macOS 安裝程式非常重要	|
| Config/USB 3.0 Mode                                     	| Enabled   	| 啟用 USB 3.0                                                                                               	|
| Config/Power/Intel SpeedStep Technology                 	| Enabled   	| 啟用 Intel SpeedStep.                                                                                      	|
| Config/Power/Intel Rapid Start Technology               	| Disabled  	| 呢個功能要0xA0休眠分區，係macOS 入面係冇呢個功能	|
| Config/Power/CPU Power Management                       	| Enabled   	| 啟用 CPU 能源管理                                                                       	|
| Config/Serial ATA (SATA)/SATA Controller Mode Option    	| AHCI      	| 啟用 AHCI                                                               	|
| Security/Predesktop Authentication                      	| 隨便  	| macOS 沒有TouchID 以外的指紋識別功能，但你仍然可改用此功能               	|
| Security/Security Chip                                  	| Disabled  	| 如果你的EFI 韌體是經過修改的，請必須禁用此功能                                                              	|
| Security/Memory Protection/Execution Prevention         	| Enabled   	| 啟用 CPU NX 	|
| Security/Virtualization/Intel Virtualization Technology 	| Enabled   	| 如果你禁用你此功能，您可以從Clover 的組態設定刪除開機引數： dart=0                             	|
| Security/Virtualization/Intel VT-d Feature              	| Enabled   	| 如果你禁用你此功能，您可以從Clover 的組態設定刪除開機引數： dart=0                              	|
| Security/Secure Boot/Secure Boot                        	| Disabled  	| Clover 沒有此功能.                                                                                      	|
| Startup/UEFI / Legacy Boot                              	| UEFI Only 	| 減少開機裝置過多造成的混亂.     	|
| Startup/UEFI / Legacy Boot/CSM Support                  	| No        	|若這項功能被啟用，Clover 需要一個CSM 圖形驅動程式令圖形於macOS 正常輸出。如果你是執行 Windows 7並組成雙系統，請確保這項功能被啟用兼且CSM 圖形驅動程式（`CSMVideoDxe.efi`）被安裝於 `EFI/CLOVER/drivers64UEFI` 	|

---------

## 製造 macOS USB 安裝程式

1. 請先閱讀 (https://www.tonymacx86.com/threads/unibeast-install-macos-sierra-on-any-supported-intel-based-pc.200564/). 於 `Tools` 目錄打開 Clover_v2.4k_r4114.pkg，然後把Clover UEFI 安裝到USB的EFI系統分區裏。

2.  利用`Tools` 目錄的`EFI Mounter v3.app`，把USB的EFI系統分區裝載 ，**複製整個數據庫的所有內容都你的USB的根目錄。**

3.  打開`/Volumes/EFI/Clover/`，以本數據庫的`EFI/CLOVER`，取代你的USB EFI系統分區裏的`EFI/CLOVER`目錄。

4.  利用`Tools` 目錄的`Clover Configurator.app`，打開`/Volumes/EFI/Clover/config.plist`，點選SMBIOS目錄，輸入smUUID, Serial Number, Board Serial Numer及UUID。（https://youtu.be/bdfjqAeB9T0?t=66）

**使用 AzureWave CE-123H的特別提示**

-  在從USB 的macOS 安裝程式開機前， 取代文件 : `EFI/CLOVER/config.plist` 至 `WiFi-4352/config.plist`，並重複以上第4步。


**使用 i3 / i5 處理器的特別提示**

-   在從USB 的macOS 安裝程式開機前， **請於USB 裡的EFI 系統分區裏的`/EFI/CLOVER/ACPI/patched` 目錄刪除 `SSDT.aml`**。若你不執行此步驟，你將無法從USB 的macOS 安裝程式開機，並會造成核心/內核崩潰 (Kernel Panic)。

# 安裝步驟

1.  依照以上BIOS 設定表，更新BIOS設定。

2.  跟從以下指示。 https://youtu.be/bdfjqAeB9T0?t=169              

3. 按下特定鍵來選擇開機裝置 (通常 F12, F11, F10, or F8) 
 
4. 選擇 USB          
                             
5. 於Clover 開機選單， 選擇於USB裡從 Install macOS開機

6. 當你抵達安裝程式介面時，選擇一個語言          

7. 對於新安裝的macOS，必須在繼續之前按照以下步驟擦除並格式化目標驅動器。

8. 在頂部菜單欄中選擇工具程式，然後打開磁盤工具程式 
 
9.	在左側列中突出顯示Sierra安裝的目標驅動器      
 
10. 單擊擦除按鈕                               
 
11. 對於名稱：輸入Sierra（您可以稍後重命名）       
 
12. 格式：選擇Mac OS 擴充格式（日誌式）           
 
13. 對於分區表：選擇GUID分區                   
 
14. 單擊清除                            
 
15. 關閉磁盤工具                                   

16.  當安裝程式詢問您要安裝的位置時，請選擇Sierra或現有的安裝

17.  完成後，系統將自動重啟

--------

## 完成安裝

# 完成安裝1 (內容由第一個指引直譯)

1.   以ThinkPad 開機

2.   開機時按下F12 鍵，選擇開機裝置

3.   選擇 USB

4.   在Clover 開機選單時，**選擇你的新macOS 安裝**

5.   根據螢幕指示完成macOS 安裝

# 完成安裝2 (安裝核心)

1.   將此存儲庫中的`Kexts /`文件夾內的所有文件複製到桌面。 如果您使用的是AzureWave CE123H，請將`WiFi-4352/Extra-Kexts/`中的Kext複製到桌面。

2.   從該存儲庫中打開`Tools`文件夾並運行`KextBeast`。 在桌面上安裝所有的kext文件。 一旦安裝成功完成，您的桌面上的kext文件就可以被刪除。

4.  執行 `Kext Utility.app` (在 本數據庫的`Tools/`目錄). 輸入您的密碼並修理權限及重新建立核心延伸快取(kextcache)

5.  在`Tools`文件夾中運行`EFI Mounter v3.app`。 將USB安裝程序的ESP和本地驅動器的ESP（SSD / HDD）安裝在ThinkPad中。

6.   Copy `EFI/CLOVER` folder from the **ESP of your USB Installer** to 
the ESP of your local drive. (Where Sierra is installed on)

7.  檢查本地驅動器中的`EFI/CLOVER/config.plist`的SMBIOS。 如果它們是空的，則重新生成另一個。 確保您填寫了`BoardSerialNumber`，`SerialNumber`和`SmUUID`。 另外，檢查`SystemParameters`中的`CustomUUID`。 確保它有一個隨機的UUID。

8.  重新開機

**若您使用i3/i5處理器的ThinkPad X230，請確保您重新建立正確的SSDT**
(以下功勞歸Piker-Alpha所有)

1.  打開 `Tools/ssdtPrGen.sh-Bet` 文件夾 , 執行 ssdtPRGen.sh 

2.  從 `~/Library/ssdtPRGen/`提取 `SSDT.aml`

3.  把提取了的SSDT替換至`/EFI/CLOVER/ACPI/patched`內的`SSDT.aml` 文件

4.  重新開機

--------------------------------------------------------------------------------------------


### 其他資源 ###

- www.google.com
- https://www.tonymacx86.com/forums/multi-booting.153/
- https://www.tonymacx86.com/forums/sierra-laptop-support.188/
- http://www.insanelymac.com/forum/files/file/496-applehda-patcher/
- http://www.insanelymac.com/forum/files/file/496-applehda-patcher/
- https://www.youtube.com/watch?v=JB-KzDBhqTA (Credit goes to Definitely Sinking)

