#!/bin/bash
cd
git clone https://github.com/yongrongwang123/dots.git .dots
mkdir .config
cd .dots
stow .
chsh -s /bin/zsh
