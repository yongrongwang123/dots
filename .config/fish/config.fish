set -gx EDITOR "nvim"
set -gx PAGER "nvim +Man!"
set -gx LANG "en_US.UTF-8"
if test -d /opt/homebrew
    set -gx XDG_CONFIG_HOME "$HOME/.config"
    eval (/opt/homebrew/bin/brew shellenv)
end
if status is-interactive
    set -g fish_greeting ""
    alias ls "ls --color=auto --group-directories-first"
    alias ll "ls -alvhF"
    alias ep "set -gx http_proxy http://127.0.0.1:8080/; set -gx https_proxy http://127.0.0.1:8080/"
    alias up "set -gu http_proxy; set -gu https_proxy"
end
