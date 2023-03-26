function transcode
    ffmpeg -i "$argv[1]" -vcodec mjpeg -q:v 2 -acodec pcm_s16be -q:a 0 -f mov "/home/wyarn/Videos/"$argv[1]".mov"
end
