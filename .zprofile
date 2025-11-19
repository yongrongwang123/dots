export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export EDITOR="nvim"
export MANPAGER="nvim +Man!"
if [[ $(uname) == "Darwin" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
    export XDG_CONFIG_HOME="$HOME/.config"
    typeset -U PATH
    unset LC_CTYPE
fi
