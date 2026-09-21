export EDITOR="vim"
export LANG="en_US.UTF-8"
if [ -d /opt/homebrew ]; then
    export XDG_CONFIG_HOME="$HOME/.config"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
. ~/.bashrc
