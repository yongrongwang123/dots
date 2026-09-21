PS1='\[\e[32m\]\u\[\e[m\] \[\e[31m\]\h\[\e[m\] \[\e[33m\]\w\[\e[m\]\n\[\e[34m\]$\[\e[m\] '
HISTSIZE=10000
HISTFILESIZE=$HISTSIZE
HISTCONTROL=ignoreboth:erasedups
shopt -s histappend
alias ls="ls --color=auto --group-directories-first"
alias ll="ls -alvhF"
alias ep="export http_proxy=http://127.0.0.1:8080/ https_proxy=http://127.0.0.1:8080/"
alias up="unset http_proxy https_proxy"
if [ -d /opt/homebrew ]; then
    . /opt/homebrew/etc/profile.d/bash_completion.sh
else
    . /usr/share/bash-completion/bash_completion
fi
