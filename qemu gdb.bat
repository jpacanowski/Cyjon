..\qemu\qemu-system-x86_64w -s -S -hda build/disk.raw -m 32 -smp 1 -rtc base=localtime -serial file:serial.log -drive id=disk,file=build/bootsector,if=none -device ahci,id=ahci -device ide-drive,drive=disk,bus=ahci.0
