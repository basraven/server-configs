# Vagrant

Start-Process -NoNewWindow -WorkingDirectory .\vagrant powershell { vagrant up centos --provider=hyperv }
Start-Process -NoNewWindow -WorkingDirectory .\vagrant powershell { vagrant up ubuntu --provider=hyperv }


# cd ..
# cd qemu
# # QEMU - RASPI 1 - Newest kernel
# & 'c:\Program Files\qemu\qemu-system-arm.exe' `
# -kernel .\kernel-qemu-4.19.50-buster `
# -cpu arm1176 `
# -m 256 `
# -M versatilepb `
# -dtb .\versatile-pb-buster.dtb `
# -serial stdio `
# -append 'root=/dev/sda2 rootfstype=ext4 rw' `
# -drive format=raw,file=.\2020-05-27-raspios-buster-lite-armhf.img `
# -net nic `
# -net user,hostfwd=tcp::5022-:22 `
# -no-reboot 

# cd ..