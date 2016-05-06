# I hate caps lock!
setxkbmap -option ctrl:nocaps

# Load X defaults
xrdb $HOME/.Xdefaults

xsetroot -cursor_name left_ptr

xset r rate 220 56

# Starts urxvt server
urxvtd -q -f -o
#urxvtc -e $HOME/.tmux/menu &

# pulseaudio --start

exec i3
