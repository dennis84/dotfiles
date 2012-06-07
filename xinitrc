setxkbmap -layout de

# Load X defaults
xrdb $HOME/.Xdefaults

xsetroot -cursor_name left_ptr

# Starts urxvt server
urxvtd -q -f -o
#urxvtc -e $HOME/.tmux/menu &

exec xmonad
