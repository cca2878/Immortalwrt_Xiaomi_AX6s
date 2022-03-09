# AX6s固件编译


由于AX6s需要应用Patch来更改固件OOB_Size，因而单独开一仓库用于编译。
优化分区：ax6s_namidairo1.patch


Installation:
    
    1. Flash stock Xiaomi "closed beta" image labelled
    'miwifi_rb03_firmware_stable_1.2.7_closedbeta.bin'.
    (MD5: 5eedf1632ac97bb5a6bb072c08603ed7)
    
    2. Calculate telnet password from serial number and login
    
    3. Execute commands to prepare device
    nvram set ssh_en=1
    nvram set uart_en=1
    nvram set boot_wait=on
    nvram set flag_boot_success=1
    nvram set flag_try_sys1_failed=0
    nvram set flag_try_sys2_failed=0
    nvram commit
    
    4. Download and flash image
    On computer:
    python -m http.server
    On router:
    cd /tmp
    wget http://<IP>:8000/factory.bin
    mtd -r write factory.bin firmware
    
    Device should reboot at this point.
