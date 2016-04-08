## Thinkpad x230 OS X - Running fully functional, natively.

### Specs
* Model: x230 2320-32U
* CPU: Intel i5-3210M 2.50GHz
* RAM: 12GB DDR3 
* Storage: 128GB SSD
* OS: OS X El Capitan 10.11.4
* EFI BIOS: 2.65 
* ECV BIOS: 1.14 

### Working
* PM
* Ethernet
* USB ports
* Battery status
* Keyboard, trackpad, trackpoint
* Sleep from menu + lid close sleep
* HD4000 (Brightness control with fn + k, fn + p and QE/CI active)
* Wireless (Using USB mini WLAN adapter with native drivers from manufacturer)
* Sound/Audio, automatic headphone detection, mute, volume controls fully working

### Not working
* Bluetooth/built in mini-PCIE WLAN card
* Card Reader (Never tried)

### Bugs
* Sound works on resume after you sleep from menu once. Afterwards, everytime lid close and resume, sound will work
* Boot screen logo glitch, reduce with custom logo = none, config.plist in Clover edit

--------------------------------------------------------------------------------------------

### Summary of problems and fixes

| Feature     | Problem        | Fix (tldr DSDT patches are your friend) |
| ------------- | ------------    | ----- |
| Sleep | Instant wake, device doesn't stay asleep | Apply DSDT USB3 instant wake 0x0, RTC patches |
| Audio | No devices in sound preferences | Inject patched AppleHDA, codec is ALC297VC_v3 (layout-id in DSDT is hex, LayoutID in AppleHDA is dec) |
| Battery and PM | No battery status, no native PM | Apply DSDT patch with Thinkpad x230i + Fix Mutex with non-zero synclevel | 
| GPU | Graphics not working natively | Apply DSDT patches for iGPU, brightness HD4000 + Low resolution | 
| USB | Ports not working/keeps device awake | Apply DSDT patches Ivy Bridge = Intel 7 series USB | 

--------------------------------------------------------------------------------------------

### AppleHDA injection methods
1. DSDT patch HDEF + IRQ (layout-id is in hex) - preferred
2. Clover config.plist
3. HDAEnabler.kext 

--------------------------------------------------------------------------------------------

### BIOS settings
| Item | Setting |
| ------------- | ------------ |
| Config/Network/Wake On Lan | Disabled |
| USB UEFI BIOS Support | Enabled |
| Always On USB | Disabled | 
| USB 3.0 Mode | Enabled | 
| Power Intel Rapid Start Technology | Disabled | 
| Serial SATA SATA Controller Mode Option | AHCI |
| Security Predesktop Authentication | Disabled |
| Security Chip | Disabled | 
| Memory Protection Execution Prevention | Enabled | 
| Virtualization | Disabled |
| Fingerprint Reader | Disabled | 
| Anti Theft Current Setting | Disabled | 
| Computrace | Disabled | 
| Secure Boot | Disabled | 
| Startup Network Boot | PCI Lan | 
| UEFI/Legacy Boot | UEFI Only | 
| CSM | Disabled | 
| CSM Support | Disabled | 
| Boot Mode | Quick |

--------------------------------------------------------------------------------------------

