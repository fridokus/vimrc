#!/bin/bash
#shutter -f -e -o /tmp/lockscreen
scrot /tmp/lockscreen.png
convert /tmp/lockscreen.png -blur 0x6 /tmp/lockscreen.png
#convert /tmp/lockscreen.png -resize 10% -resize 1000% /tmp/lockscreen.png
i3lock -i /tmp/lockscreen.png
