#!/bin/bash
mkdir /etc/hysteria
cd /etc/hysteria
cp ~/.dots/scripts/linux/hysteria-$mode.yaml config.yaml
read -p "Hysteria password: " pwd
sed -i "s/password:.*/password: $pwd/" config.yaml
openssl req -x509 -nodes -newkey rsa:4096 -days 3650 -subj "/CN=archlinux.org" -keyout server.key -out server.crt
~/.dots/scripts/linux/hysteria-common.sh
