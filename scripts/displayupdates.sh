updates=$(checkupdates | wc -l)

if (( "$updates" != "0" )); then
	dunstify -h string:x-dunst-stack-tag:updates "$updates system updates available"
fi
