if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_right_prompt
  #intentionally left blank
end

alias conf='nano ~/.config/fish/config.fish'
alias sconf='source ~/.config/fish/config.fish'
alias work='alarm 50'
alias mola='alarm 10'
alias findname="xprop | grep WM_CLASS"
alias clock='tty-clock -sxc -t -C 7'
alias gputemp="watch -n 2 nvidia-smi"
alias cputemp='sensors | head'
alias sd="shutdown now"
alias news='~/Desktop/projects/news/news.py'
alias python='python3'
alias sourceb='source ~/.bashrc'
alias b='nano ~/.bashrc'
alias s='nano ~/.config/starship.toml'
alias c='clear'
alias aptup='sudo apt update && sudo apt upgrade'
alias suspendpc='systemctl suspend'


#function fish_prompt
#                 set_color bf1143
#                 echo -n $USER@$hostname
#
#                 set_color white
#                 echo -n ' '(prompt_pwd)' '
#                 set_color white
#
#                 echo -n $symbol
#             end

function alarm
           if test "$argv[1]" -ge 20
               echo 'Work, focus' | lolcat
           else
               echo 'Short alarm' | lolcat
           end
           timer "$argv[1]"m
           notify-send Timer ended! -i alarm -t 3000
           ffplay -nodisp -autoexit -loglevel quiet -af "volume=0.12" \
               /home/wyarn/Desktop/soundss/beeps.ogg
       end

starship init fish | source
