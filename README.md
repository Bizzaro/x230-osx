## Common problems and fixes

### USB:
<todo>

### Sleep:
Problems with sleep are usually related to power management and USB.
If the system goes to sleep and wakes immediately, look for "Wake reason" in kernel log and edit method _PSW or remove _PRW from that device in DSDT.
Apply RTC patch. 

### Audio:
You can use HDEF and a codec patch (ALC*) if you will use a patched AppleHDA.
Make sure layout-id in DSDT (hex) coincides with LayoutID in AppleHDA (dec).


DSDT: LayoutID (dec, base10)

AppleHDA: layout-id (hex, base16)