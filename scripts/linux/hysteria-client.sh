#!/bin/bash
mkdir /etc/hysteria
cd /etc/hysteria
cp ~/.dots/scripts/linux/hysteria-$mode.yaml config.yaml
read -p "Hysteria password: " pwd
read -p "Hysteria ip: " ip
sed -i "s/server:.*/server: $ip:443/" config.yaml
sed -i "s/auth:.*/auth: $pwd/" config.yaml
~/.dots/scripts/linux/hysteria-common.sh
