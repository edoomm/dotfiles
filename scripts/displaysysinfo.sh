#!/bin/bash

num_updates=$(checkupdates | wc -l)
message_updates=$(
	echo "System updates:" && echo "$num_updates available"
)

# Timing out for start up
sleep 0.8

tdctl_output=$(timedatectl)

sys_clk_sync=$(grep 'System clock synchronized' <<< $tdctl_output)
ntp_service=$(grep 'NTP service' <<< $tdctl_output)

message_tsync=$(
	echo "NTP Service:" && echo "$sys_clk_sync" && echo "$ntp_service"
)

# Final message
message=$(
	echo $message_updates && echo &&
	echo "NTP Service:" && echo "$sys_clk_sync" && echo "$ntp_service"
)

if (( "$num_updates" != "0" )); then
	notify-send -u normal -c system-info "$message"
else 
	checkupdates
	if (( "$?" == "1" )); then
		error_msg_1="Cannot fetch system updates (ERR_NO: 1)"
		error_hnt_1="Hint: Possibly no internet connection"
		msg="$(echo $error_msg_1 && echo $error_hnt_1)"
		notify-send -u normal -c system-info "$msg"
	else
		notify-send -u normal -c system-info "$message_tsync"
	fi
fi
