## Thinkpad x230 (2320-32U) OS X El Capitan 10.11.4
### Working: 
* PM
* Ethernet
* USB ports
* Battery status
* Keyboard, trackpad, trackpoint
* Sleep from menu + lid close sleep
* HD4000 (Brightness control with fn + k, fn + p and QE/CI active)
* Wireless (Using USB mini WLAN adapter with native drivers from manufacturer)
* Sound/Audio, automatic headphone detection, mute, volume controls fully working

### Not working:
* Bluetooth/built in mini-PCIE WLAN card
* Card Reader (Never tried)

### Bugs:
* Sound works on resume after you sleep from menu once. Afterwards, everytime lid close and resume, sound will work
* Boot screen logo glitch, reduce with custom logo = none, config.plist in Clover edit

### Problems and fixes

#### Summary:

| Device        | Problem        | Fix  |
| ------------- | ------------    | ----- |
| Sleep | Instant wake, device doesn't stay asleep | USB3 instant wake 0x0, RTC patch |
| Audio | No devices in sound preferences |  HDEF + patched AppleHDA, codec is ALC297VC_v3 (layout-id in DSDT is hex, LayoutID in AppleHDA is dec) |
| Battery and PM | No battery status, no native PM | Apply DSDT patch with Thinkpad x230i + Fix Mutex with non-zero synclevel | 
| GPU | Graphics not working natively | Apply DSDT patches for iGPU, brightness HD4000 + Low resolution | 
| USB | Ports not working/keeps device awake | Apply DSDT patches Ivy Bridge = Intel 7 series USB | 
