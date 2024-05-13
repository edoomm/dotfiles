#!/bin/bash

if (( "$1" == "mute" )); then
	pactl set-source-mute @DEFAULT_SOURCE@ toggle
	volume=$(amixer get Capture | tail -n 1 | awk '{ print $5, $6 }')
else
	volume=$(amixer set Capture $1%$2 | tail -n 1 | awk '{ print $5, $6 }')
fi
message="Microphone volume changed to $volume"

notify-send -u normal -c volume-mic-changed -t 2000 "$message"
