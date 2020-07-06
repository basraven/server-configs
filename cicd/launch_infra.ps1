# Vagrant
cd vagrant
vagrant destroy --force ; vagrant up --parallel --provider=hyperv


# QEMU
cd ..
cd qemu
{ "c:\Program Files\qemu\qemu-system-arm.exe" 
-kernel kernel-qemu-4.19.50-buster 
-cpu arm1176 
-m 1024 
-M versatilepb 
-dtb versatile-pb-buster.dtb 
-serial stdio 
-append "root=/dev/sda2 rootfstype=ext4 rw" 
-drive format=raw,file=2020-05-27-raspios-buster-lite-armhf.img 
-net nic 
-net user,hostfwd=tcp::5022-:22 
-no-reboot }