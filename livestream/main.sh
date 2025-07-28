#!/bin/bash

# Load the secret stream key
STREAM_KEY=$STREAM_KEY

# Start FFmpeg stream to YouTube (adjust input as needed)
ffmpeg \
 -re -stream_loop -1 -i "https://archive.org/download/kk_20250727/kk.mp4" \
 -vcodec libx264 -preset veryfast -b:v 4500k -maxrate 4800k -bufsize 4800k \
 -acodec aac -b:a 160k -ar 44100 -ac 2 \
 -pix_fmt yuv420p -g 120 -r 60 \
 -f flv "rtmp://a.rtmp.youtube.com/live2/$STREAM_KEY"
