#!/usr/bin/env bash

echo "Server = https://mirrors.cat.net/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist
pacman -Syu --needed inetutils stow zsh-autosuggestions zsh-syntax-highlighting cmake fd ripgrep fzf luarocks tmux neovim lazygit diff-so-fancy nodejs-lts-jod npm tldr python-pip man-pages zsh ncurses btop
pacman -Scc
chsh -s /usr/bin/zsh
mandb
reboot

mkdir -p .config
git clone https://github.com/yongrongwang123/dots.git .dots
cd .dots
stow .
lazygit
cd -
source .zshrc

wget https://raw.githubusercontent.com/alacritty/alacritty/HEAD/extra/alacritty.info
tic -xe alacritty,alacritty-direct alacritty.info
rm alacritty.info
git clone https://github.com/tmux-plugins/tpm .config/tmux-plugins/tpm
tmux
btop

bash -c "$(curl -fsSL https://get.hy2.sh/)"
openssl req -x509 -nodes -newkey rsa:4096 -days 3650 -subj "/CN=amazon.com" -keyout /etc/hysteria/server.key -out /etc/hysteria/server.crt
ufw allow 443/udp
nvim
chown hysteria:hysteria /etc/hysteria/*
systemctl enable --now hysteria-server.service
systemctl status hysteria-server.service
