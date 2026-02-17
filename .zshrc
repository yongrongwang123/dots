LINE=$'\n'
PROMPT="%F{green}%n%f %F{red}%m%f %F{yellow}%~%f${LINE}%F{blue}$%f "
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=$HISTSIZE
setopt APPEND_HISTORY
setopt HIST_SAVE_NO_DUPS
alias ls="ls --color=auto"
alias ll="ls -alvhF"
alias ep="export http_proxy=http://127.0.0.1:8080/ https_proxy=http://127.0.0.1:8080/"
alias up="unset http_proxy https_proxy"
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
