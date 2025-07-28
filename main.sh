#!/bin/bash

# Load the secret stream key
STREAM_KEY=$STREAM_KEY

# Start FFmpeg stream to YouTube (adjust input as needed)
ffmpeg \
 -re -stream_loop -1 -i "https://archive.org/download/kis_20250728/kis.mp4" \
 -vcodec libx264 -preset veryfast -b:v 6000k -maxrate 6000k -bufsize 12000k \
 -acodec aac -b:a 160k -ar 44100 -ac 2 \
 -pix_fmt yuv420p -g 120 -r 60 \
 -f flv "rtmp://a.rtmp.youtube.com/live2/$STREAM_KEY"
