PS1='\[\e[32m\]\u\[\e[m\] \[\e[31m\]\h\[\e[m\] \[\e[33m\]\w\[\e[m\]\n\[\e[34m\]$\[\e[m\] '
HISTSIZE=10000
HISTFILESIZE=$HISTSIZE
HISTCONTROL=ignoreboth:erasedups
shopt -s histappend
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"
alias ls="ls --color=auto"
alias ll="ls -alvhF --group-directories-first"
alias grep="grep --color=auto"
