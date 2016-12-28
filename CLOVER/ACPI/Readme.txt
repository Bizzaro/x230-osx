 ____                _                
|  _ \ ___  __ _  __| |_ __ ___   ___ 
| |_) / _ \/ _` |/ _` | '_ ` _ \ / _ \
|  _ <  __/ (_| | (_| | | | | | |  __/
|_| \_\___|\__,_|\__,_|_| |_| |_|\___|
Last Edit 2016/12/27

ThinkPad X230 with macOS Sierra
Credits goes to Rehabman , tonymacx86 , toleda , Piker-Alpha , Clover

The original Folder folder stores the fresh unedited ACPI tables extracted by Clover.

—————————————————————————————————————————————————————————————————————————————————————————

The patched folder stores the compiled ACPI tables for patching.

——————————————————————————————————————————————————————————————————————————————————————————

The sources folder stores the patch contents of ACPI contents and the edited ACPI tables in DSL.

——————————————————————————————————————————————————————————————————————————————————————————

If the CPU in your ThinkPad is i7-3520M you can use the SSDT included in patched folder directly.
If your CPU is not i7-3520M you might have to regenerate your own SSDT with ssdtPRgen.
Link : https://github.com/Piker-Alpha/ssdtPRGen.sh