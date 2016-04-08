## Common problems and fixes

### USB:
*todo*

### Sleep:
Problems with sleep are usually related to power management and USB.
If the system goes to sleep and wakes immediately, look for "Wake reason" in kernel log and edit method _PSW or remove _PRW from that device in DSDT.
Apply RTC patch. 

### Audio:
You can use HDEF and a codec patch (ALC*) if you will use a patched AppleHDA.
Make sure layout-id in DSDT (hex) coincides with LayoutID in AppleHDA (dec).


DSDT: LayoutID (dec, base10)

AppleHDA: layout-id (hex, base16)

| Device        | Problem        | Fix  |
| ------------- | ------------    | ----- |
| Sleep | Instant wake, device doesn't stay asleep | USB3 instant wake 0x0, RTC patch |
| Audio | HDEF + codec patch (ALC___), patched AppleHDA, layout-id in DSDT is hex, LayoutID in AppleHDA is dec. | Patched AppleHDA + Injection method |
| Battery and PM | No battery status, no native PM | Apply DSDT patch with Thinkpad x230i + Fix Mutex with non-zero synclevel | 
| GPU | Graphics not working natively | Apply DSDT patches for iGPU, brightness HD4000 + Low resolution | 
| USB | Ports not working/keeps device awake | Apply DSDT patches Ivy Bridge = Intel 7 series USB | 
