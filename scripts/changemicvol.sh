#!/bin/bash

volume=$(amixer set Capture $1%$2 | tail -n 1 | awk '{ print $5, $6 }')
message="Microphone volume changed to $volume"

notify-send -u normal -c volume-mic-changed -t 2000 "$message"
