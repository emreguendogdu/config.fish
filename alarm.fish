function alarm
           clear

           if test "$argv[1]" -ge 20
               echo "Work, focus" | lolcat
               timer "$argv[1]"m
               notify-send 'Work ended, gratz!' -i alarm -t 3000
           else
               echo "Short alarm" | lolcat
               timer "$argv[1]"m
               notify-send 'Short alarm ended!' -i alarm -t 3000
           end

           ffplay -nodisp -autoexit -loglevel quiet -af "volume=0.12" \
               /home/wyarn/Desktop/sounds/beeps.ogg

       
end
