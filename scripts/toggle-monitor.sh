#!/bin/bash

output="HDMI-1-1"
primary=$(xrandr | grep primary | awk '{print $1}')
res="1360"
monitor_connected=$(xrandr | grep "$output connected $res")

if [[ -z "$monitor_connected" ]]; then
	xrandr --output $output --auto --output $primary --auto --left-of $output
else
	xrandr --output $output --off
fi
