#!/bin/bash
sudo pacman -Syu --needed vim git stow btop neovim tmux zsh-autosuggestions zsh-syntax-highlighting ripgrep fd luarocks lazygit diff-so-fancy gcc make ufw man-db man-pages tailscale
sudo echo -e "PasswordAuthentication no\nKbdInteractiveAuthentication no\nUsePAM no" > /etc/ssh/sshd_config.d/1-custom.conf
sudo ufw allow 443/udp
sudo ufw allow 22/tcp
sudo ufw enable
sudo systemctl enable --now ufw.service
sudo systemctl enable --now tailscaled.service
sudo tailscale up
bash -c "$(curl -fsSL https://raw.githubusercontent.com/yongrongwang123/dots/refs/heads/main/scripts/linux/github.sh)"
chsh -s /bin/zsh
su -
read -p "Hysteria mode (server / client): " mode
mode=$mode ~/.dots/scripts/linux/hysteria-$mode.sh
exit
export http_proxy=http://127.0.0.1:8080/ https_proxy=http://127.0.0.1:8080/
nvim
