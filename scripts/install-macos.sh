#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install inetutils stow zsh-autosuggestions zsh-syntax-highlighting cmake fd ripgrep fzf luarocks tmux neovim lazygit diff-so-fancy node@22 tlrc coreutils gnu-tar findutils grep gnu-sed gawk wget

ssh-keygen -t ed25519 -C "2278508989@qq.com"
cat .ssh/id_ed25519.pub
ssh -T git@github.com
git clone https://github.com/yongrongwang123/dots.git .dots
cd .dots
stow .
lazygit
cd -
source .zshrc

wget https://raw.githubusercontent.com/alacritty/alacritty/HEAD/extra/alacritty.info
sudo tic -xe alacritty,alacritty-direct alacritty.info
rm alacritty.info
git clone https://github.com/tmux-plugins/tpm .config/tmux-plugins/tpm
tmux
nvim
