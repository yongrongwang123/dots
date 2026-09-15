#!/bin/bash
sudo pacman -Syu --needed intel-media-driver vulkan-intel mesa fwupd ly bluetui impala yazi dua-cli grim slurp pipewire-jack brightnessctl wl-clipboard noto-fonts noto-fonts-extra noto-fonts-cjk noto-fonts-emoji ttf-sourcecodepro-nerd polkit-gnome xdg-desktop-portal-gtk xorg-xwayland hyprpaper hyprlock hypridle hyprland rofi waybar ghostty zed chromium
sudo systemctl enable --now bluetooth.service ly@tty1.service
sudo systemctl disable --now getty@tty1.service
sudo machinectl shell $USER@
systemctl --user enable --now pipewire.service wireplumber.service
