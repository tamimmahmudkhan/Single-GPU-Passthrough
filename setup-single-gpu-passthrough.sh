#!/bin/fish
 sudo mkdir -p /etc/libvirt/hooks/qemu.d/win11/{prepare/begin,release/end}

 sudo cp qemu /etc/libvirt/hooks/
 sudo chmod +x /etc/libvirt/hooks/qemu

 sudo cp start.sh /etc/libvirt/hooks/qemu.d/win11/prepare/begin/
 sudo cp revert.sh /etc/libvirt/hooks/qemu.d/win11/release/end/

 sudo systemctl restart libvirtd
