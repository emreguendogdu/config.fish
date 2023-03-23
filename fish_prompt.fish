function fish_prompt
    set_color bf1143
    echo -n $USER@$hostname

    set_color white
    echo -n ' '(prompt_pwd)' '
    set_color white

    echo -n $symbol
end
