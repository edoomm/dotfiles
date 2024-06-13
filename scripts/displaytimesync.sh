#!/bin/bash

# Timing out for start up
sleep 0.8

tdctl_output=$(timedatectl)

sys_clk_sync=$(grep 'System clock synchronized' <<< $tdctl_output)
ntp_service=$(grep 'NTP service' <<< $tdctl_output)

message=$(echo "$sys_clk_sync" && echo "$ntp_service")

notify-send -u normal -c timesync_ntpserv "$message"
