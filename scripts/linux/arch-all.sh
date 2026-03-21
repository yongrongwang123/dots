#!/bin/bash
sudo pacman -Syu --needed vim git stow btop
su -
bash -c "$(curl -fsSL https://raw.githubusercontent.com/yongrongwang123/dots/refs/heads/mini/scripts/linux/github.sh)"
pacman -Scc
journalctl --vacuum-size=50M
echo -e "PasswordAuthentication no\nUsePAM no" > /etc/ssh/sshd_config.d/1-custom.conf
