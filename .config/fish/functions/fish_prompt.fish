function fish_prompt --description 'Write out the prompt'
    set -lx fish_prompt_pwd_dir_length 0
    echo -s (prompt_login) ' ' (set_color $fish_color_cwd) (prompt_pwd)
    echo -n -s (set_color $fish_color_quote) '$ '
end
