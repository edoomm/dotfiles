num_updates=$(checkupdates | wc -l)
message="$num_updates system updates available"

if (( "$num_updates" != "0" )); then
	notify-send -u normal -c system-updates "$message"
else 
	checkupdates
	if (( "$?" == "1" )); then
		error_msg_1="Cannot fetch system updates (ERR_NO: 1)"
		error_hnt_1="Hint: Possibly no internet connection"
		msg="$(echo $error_msg_1 && echo $error_hnt_1)"
		notify-send -u normal -c system-updates "$msg"
	fi
fi
