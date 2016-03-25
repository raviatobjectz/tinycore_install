(echo o; echo n; echo p; echo 1; echo ; echo; echo w) | sudo fdisk /dev/sda
(echo a; echo 1; echo w) | sudo fdisk /dev/sda
sudo mkfs.ext4 /dev/sda1
sudo rebuildfstab
sudo mount /mnt/sda1
sudo mount /mnt/sr0
sudo mkdir -p /mnt/sda1/boot/grub
sudo mkdir -p /mnt/sda1/tce/optional
sudo cp -p /mnt/sr0/boot/core.gz /mnt/sda1/boot/.
sudo cp -p /mnt/sr0/boot/vmlinuz /mnt/sda1/boot/.
sudo cp -p /usr/lib/grub/i386-pc/* /mnt/sda1/boot/grub/.
touch /mnt/sda1/tce/mydata.tgz
sudo echo "default 0" > /mnt/sda1/boot/grub/menu.lst
sudo echo "timeout 0" >> /mnt/sda1/boot/grub/menu.lst
sudo echo "title RaviCore" >> /mnt/sda1/boot/grub/menu.lst
sudo echo "kernel /boot/vmlinuz quiet" >> /mnt/sda1/boot/grub/menu.lst
sudo echo "initrd /boot/core.gz" >> /mnt/sda1/boot/grub/menu.lst
grub --batch <<EOT
root (hd0,0)
setup (hd0)
quit
EOT
