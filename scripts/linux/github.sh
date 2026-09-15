#!/bin/bash
cd
git clone https://github.com/yongrongwang123/dots.git .dots
rm .*shrc .*profile
mkdir .config
cd .dots
stow .
