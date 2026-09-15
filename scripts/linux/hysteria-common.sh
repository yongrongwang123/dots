#!/bin/bash
cd /usr/local/bin
curl -LO https://github.com/apernet/hysteria/releases/download/app%2Fv2.8.1/hysteria-linux-amd64
mv hysteria-linux-amd64 hysteria
chmod 755 hysteria
cd /etc/systemd/system
cp ~/.dots/scripts/linux/hysteria-$mode.service hysteria.service
useradd -r -d / -s /usr/bin/nologin hysteria
chown hysteria:hysteria /etc/hysteria/*
systemctl enable --now hysteria.service
systemctl status hysteria.service
