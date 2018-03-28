#!/usr/bin/env bash

. config.sh
if [ $is_edit != y ]; then
    exit
fi

echo "Mount filesystem.."

mkdir -p $mount_point_root
mount $mount_root $mount_point_root

mkdir -p $mount_point_root/boot
mount $mount_point_root/boot $mount_boot

mkdir -p $mount_point_root/var
mount $mount_point_root/var $mount_var

mkdir -p $mount_point_root/home
mount $mount_point_root $mount_home

if [ $has_swap == y ]; then
    mkswap $mount_swap
    swapon $mount_swap
fi

# Change Source
echo "Change mirrorlist.."

echo "
## China Mirrors
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch
Server = http://mirrors.163.com/archlinux/\$repo/os/\$arch
Server = http://mirrors.ustc.edu.cn/archlinux/\$repo/os/\$arch
" > /etc/pacman.d/mirrorlist

echo "
## Archlinux CN
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = http://repo.archlinuxcn.org/\$arch
" >> /etc/pacman.conf

## Update index
pacman -Syy
pacman -S git

## Install base system
pacstrap /mnt base base-devel --force
rm /mnt/etc/fstab
genfstab -U -p /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab

git clone https://github.com/tiannian/rcfiles

echo "Install system success."
arch-chroot /mnt ./rcfiles/setup.sh

