#!/bin/bash
sudo pacman -Syu --needed vim git stow btop neovim tmux zsh-autosuggestions zsh-syntax-highlighting ripgrep fd luarocks lazygit diff-so-fancy gcc make ufw man-db man-pages tailscale
su -
bash -c "$(curl -fsSL https://raw.githubusercontent.com/yongrongwang123/dots/refs/heads/main/scripts/linux/github.sh)"
~/.dots/scripts/linux/arch.sh
~/.dots/scripts/linux/tailscale.sh
read -p "Hysteria mode (server / client): " mode
mode=$mode ~/.dots/scripts/linux/hysteria-$mode.sh
export http_proxy=http://127.0.0.1:8080/ https_proxy=http://127.0.0.1:8080/
nvim
