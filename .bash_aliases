alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage'
alias connectdisplay='xrandr --output DP-1 --auto --left-of eDP-1'
alias connectdisplay2='xrandr --output DP-2-1-8 --auto --left-of HDMI-1 --output eDP-1 --auto --right-of HDMI-1'
alias gp='(git push origin HEAD:refs/for/master)'
alias v='vim'
alias g='git'
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'
