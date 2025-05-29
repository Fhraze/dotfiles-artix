#!/bin/bash

# Check if wf-recorder is running
if pgrep -x "wf-recorder" > /dev/null; then
    # "wf-recorder is running."
    pkill -INT wf-recorder
    notify-send "Recording finished"
else
    # "wf-recorder is NOT running."
    wf-recorder --audio --file="/home/$USER/Videos/$(date +'%Y-%m-%d_%H-%M-%S').mp4" -g "$(slurp)"
    #notify-send "wf-recorder is running"
fi
