updates=$(checkupdates | wc -l)
message="$updates system updates available"

if (( "$updates" != "0" )); then
	notify-send -u normal -c system-updates "$message"
fi
