#!/bin/sh

sudo pacman -Syu --needed man-db man-pages stow neovim tmux zsh-autosuggestions zsh-syntax-highlighting ripgrep fd luarocks lazygit diff-so-fancy fastfetch btop
sudo pacman -Syu --needed noto-fonts noto-fonts-extra noto-fonts-cjk noto-fonts-emoji ttf-sourcecodepro-nerd bluetui impala fwupd brightnessctl wl-clipboard hyprpaper hyprlock polkit-gnome xdg-desktop-portal-gtk nemo rofi waybar alacritty chromium
sudo pacman -Rsun nano uwsm htop wofi dunst kitty polkit-kde-agent dolphin
