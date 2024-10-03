#!/bin/bash
rm -f /tmp/lockscreen.png
scrot /tmp/lockscreen.png
#convert /tmp/lockscreen.png -blur 0x6 /tmp/lockscreen.png
convert /tmp/lockscreen.png -resize 16% -resize 625% /tmp/lockscreen.png
i3lock -i /tmp/lockscreen.png
