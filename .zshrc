LINE=$'\n'
PROMPT="%F{green}%n%f %F{red}%m%f %F{yellow}%~%f${LINE}%F{blue}$%f "
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=$HISTSIZE
setopt APPEND_HISTORY
setopt HIST_SAVE_NO_DUPS
alias ls="ls --color=auto --group-directories-first"
alias ll="ls -alvhF"
alias ep="export http_proxy=http://127.0.0.1:8080/ https_proxy=http://127.0.0.1:8080/"
alias up="unset http_proxy https_proxy"
bindkey -e
if [ -d /opt/homebrew ]; then
    ZSH_PLUGIN=/opt/homebrew/share
    ZSH_FUNCTION=$ZSH_PLUGIN
else
    ZSH_PLUGIN=/usr/share/zsh/plugins
    ZSH_FUNCTION=/usr/share/zsh/site-functions
fi
. $ZSH_PLUGIN/zsh-autosuggestions/zsh-autosuggestions.zsh
. $ZSH_PLUGIN/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
FPATH=$ZSH_FUNCTION/zsh-completions:$FPATH
autoload -Uz compinit
compinit
