#!/bin/bash
cd
git clone https://github.com/yongrongwang123/dots.git .dots-gui
cd .dots-gui
git checkout gui
stow .
