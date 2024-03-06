update_packages () { dunstify "TODO: Updating..."; }

updates=$(checkupdates | wc -l)

if (( "$updates" != "0" )); then
	ACTION=$(
	dunstify -h string:x-dunst-stack-tag:updates \
		-A 'updated, default' \
		"$updates system updates available"
	)

	if (( "$ACTION" == "2" )); then
		update_packages
	fi
fi
