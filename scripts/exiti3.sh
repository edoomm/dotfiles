ps aux | grep clipmenud | awk '{print $2}' | xargs kill
i3-msg exit
