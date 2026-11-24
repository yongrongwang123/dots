function prompt_login --description 'display user name for the prompt'
    if not set -q __fish_machine
        set -g __fish_machine
    end
    echo -n -s (set_color $fish_color_user) "$USER" ' ' (set_color $fish_color_host) (prompt_hostname)
end
