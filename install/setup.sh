read -p "ENTER to continue "

pacman -Syy
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc --utc
echo "
en_US.UTF-8 UTF-8
zh_CN.UTF-8 UTF-8
" > /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf

echo $hostname > /etc/hostname

## Config network


echo Setting your root password:
passwd

if [ $intel_cpu == y ] then
    pacman -S intel-ucode
fi

if [ $bios_type == uefi ] then
    pacman -S grub efibootmgr
    grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=Arch
    grub-mkconfig -o /boot/grub/grub.cfg
else if [ $bios_type == legacy ] then
    pacman -S grub
    grub-install --target=i386-pc $GRUB
    grub-mkconfig -o /boot/grub/grub.cfg
fi

cat /boot/grub/grub.cfg

