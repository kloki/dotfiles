xrandr --output HDMI1 --auto --output eDP1 --auto --left-of HDMI1
killall polybar
polybar slave &
polybar top &
