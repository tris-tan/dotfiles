#!/bin/bash 

pid=`pgrep wf-recorder`
status=$?

if [ $status != 0 ] 
then 
  wf-recorder -f "$HOME/Videos/$(date +'recording_%Y-%m-%d-%H%M%S.mkv')" -a -C libopus -P vbr=on -r 60 -c hevc_vaapi -d /dev/dri/renderD128 -p rc_mode=CQP q=35;
else 
  pkill --signal SIGINT wf-recorder
fi;