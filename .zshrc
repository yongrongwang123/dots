LINE=$'\n'
PROMPT="%F{green}%n%f %F{red}%m%f %F{yellow}%~%f${LINE}%F{blue}$%f "
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=$HISTSIZE
setopt APPEND_HISTORY
setopt HIST_SAVE_NO_DUPS
alias ls="ls --color=auto"
alias ll="ls -alvhF --group-directories-first"
alias grep="grep --color=auto"
export MANPAGER="nvim +Man!"

export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_DEFAULT_OPTS="-e -m --height 100% --layout reverse --border none --preview-border none --no-separator --no-scrollbar"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'cat {}'"
export FZF_ALT_C_COMMAND="fd --type d"
_fzf_compgen_path() { fd --type f "$1" }
_fzf_compgen_dir() { fd --type d "$1" }

export http_proxy=http://127.0.0.1:12334/
export https_proxy=$http_proxy
if [[ $OSTYPE == darwin* ]]; then
    export XDG_CONFIG_HOME="$HOME/.config"
    eval "$(/opt/homebrew/bin/brew shellenv)"
    export PATH="/opt/homebrew/opt/node@22/bin:/opt/homebrew/opt/inetutils/libexec/gnubin:/opt/homebrew/opt/gawk/libexec/gnubin:/opt/homebrew/opt/gnu-sed/libexec/gnubin:/opt/homebrew/opt/grep/libexec/gnubin:/opt/homebrew/opt/findutils/libexec/gnubin:/opt/homebrew/opt/gnu-tar/libexec/gnubin:/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
    source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    pacman -Qs ^wayland$ > /dev/null 2>&1
    if [[ $? != 0 ]]; then
        unset http_proxy https_proxy
    fi
fi
export PATH="$HOME/.local/bin:$PATH"
typeset -U PATH

source <(fzf --zsh)
