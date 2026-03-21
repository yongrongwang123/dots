#!/bin/bash
pacman -Scc
journalctl --vacuum-size=50M
echo -e "PasswordAuthentication no\nKbdInteractiveAuthentication no\nUsePAM no" > /etc/ssh/sshd_config.d/1-custom.conf
ufw allow 443/udp
ufw allow 22/tcp
ufw enable
systemctl enable --now ufw.service
