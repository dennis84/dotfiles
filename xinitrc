# I hate caps lock!
setxkbmap -option caps:none

# Load X defaults
xrdb $HOME/.Xdefaults

xsetroot -cursor_name left_ptr

xset r rate 220 56

# Starts urxvt server
urxvtd -q -f -o

sh $HOME/.fehbg &

# pulseaudio --start

exec i3
