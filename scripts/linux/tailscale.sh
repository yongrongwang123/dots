#!/bin/bash
systemctl enable --now tailscaled.service
tailscale up
