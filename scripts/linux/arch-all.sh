#!/bin/bash
sudo pacman -Syu --needed xorg-xwayland hyprland grim slurp pipewire-jack ly intel-media-driver vulkan-intel mesa noto-fonts noto-fonts-extra noto-fonts-cjk noto-fonts-emoji ttf-sourcecodepro-nerd bluetui impala fwupd brightnessctl wl-clipboard hyprpaper hyprlock polkit-gnome xdg-desktop-portal-gtk rofi waybar ghostty zed firefox
bash -c "$(curl -fsSL https://raw.githubusercontent.com/yongrongwang123/dots/refs/heads/gui/scripts/linux/github.sh)"
sudo systemctl enable --now bluetooth.service ly@tty1.service
sudo systemctl disable --now getty@tty1.service
sudo machinectl shell $USER@
systemctl --user enable --now pipewire.service wireplumber.service
