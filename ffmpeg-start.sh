#!/bin/bash

ffmpeg -re -stream_loop -1 -f concat -safe 0 -i playlist.txt \
-loop 1 -i background.png \
-c:a aac -b:a 192k \
-c:v libx264 -preset veryfast -tune stillimage \
-pix_fmt yuv420p -shortest \
-f flv "rtmp://a.rtmp.youtube.com/live2/733a-5hdz-gzf1-xjrz-5av6"
