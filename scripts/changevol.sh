#!/bin/bash

if [[ "$1" == "mute" ]]; then
	pactl set-sink-mute @DEFAULT_SINK@ toggle
else
	pactl set-sink-volume @DEFAULT_SINK@ $1%
fi

sleep 0.2

volume=$(amixer get Master | awk '$0~/%/{printf("%s - %s", $4, $6)}' | tr -d '[]')
message="Volume changed to $volume"

notify-send -u normal -c volume-changed -t 500 "$message"
