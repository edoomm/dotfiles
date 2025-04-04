layout=$(setxkbmap -query | awk '/layout:/ {print $2}')

if [[ "$layout" == "us" ]]; then
  setxkbmap latam
else
  setxkbmap us
fi
