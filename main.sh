#!/bin/bash

# Install ffmpeg
apt update && apt install -y ffmpeg

# Optional: check ffmpeg installed
ffmpeg -version

# Use environment variable for stream key
ffmpeg -stream_loop -1 -re -i video.mp4 \
-c:v libx264 -preset veryfast -maxrate 1500k -bufsize 3000k \
-pix_fmt yuv420p -g 60 -r 30 \
-f flv "rtmp://a.rtmp.youtube.com/live2/4jkj-h7a7-61w5-twzs-bytk"
