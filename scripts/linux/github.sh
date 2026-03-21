#!/bin/bash
cd
git clone https://github.com/yongrongwang123/dots.git .dots-mini
rm .*shrc .*profile
mkdir .config
cd .dots-mini
git checkout mini
stow .
