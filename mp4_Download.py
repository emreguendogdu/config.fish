#!/usr/bin/python3

from pytube import YouTube
import sys
import subprocess

path = "/home/wyarn/Videos/"  # Save path for the .mov file.


if len(sys.argv) < 4:  # If arguments not given, print the instructions.
    print("Usage: download <url> <resolution> <filename>")
    sys.exit(1)

url = sys.argv[1]
resolution = sys.argv[2]
filename = sys.argv[3]
mp4file = f"{sys.argv[3]}.mp4"


def Download():  # Download Youtube video by the given resolution.
    YouTube(url).streams.get_by_resolution(resolution).download(filename=mp4file)
    print(f"{mp4file} downloaded successfully!")


def transcode():  # Transcode the video, and rename.
    movfile = f"{filename}.mov"
    command = f"ffmpeg -i {mp4file} -vcodec mjpeg -q:v 2 -acodec pcm_s16be -q:a 0 -f mov {path}{movfile}"
    subprocess.run(command, shell=True, check=True)

    subprocess.run("clear")
    print("Transcoded successfully.")


def removemp4():  # Remove the futile mp4 file.
    subprocess.run(f"rm {mp4file}", shell=True, check=True)
    print("Removed mp4 file successfully.")


Download()
transcode()
removemp4()
