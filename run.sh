#!/bin/sh
Xspice --deferred-fps 60 --streaming-video all --jpeg-wan-compression=always --auto --vdagent --password=1q2w3e4r :2 >/dev/null 2>&1 &
/srv/websockify/run -v --web=/srv/spice-web-client 0.0.0.0:6080 localhost:5900 &
sleep 3
#setxkbmap de
ratpoison