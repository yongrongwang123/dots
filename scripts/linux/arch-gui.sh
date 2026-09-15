#!/bin/bash
sudo pacman -Syu --needed xorg-xwayland grim slurp pipewire-jack ly intel-media-driver vulkan-intel mesa noto-fonts noto-fonts-extra noto-fonts-cjk noto-fonts-emoji ttf-sourcecodepro-nerd bluetui impala fwupd brightnessctl wl-clipboard polkit-gnome xdg-desktop-portal-gtk hyprpaper hyprlock hypridle hyprland rofi waybar ghostty zed chromium
sudo systemctl enable --now bluetooth.service ly@tty1.service
sudo systemctl disable --now getty@tty1.service
sudo machinectl shell $USER@
systemctl --user enable --now pipewire.service wireplumber.service
