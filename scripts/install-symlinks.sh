#!/bin/bash

# Absolute path to this script
SCRIPT=`readlink -f $0`
# Absolute path this script is in
SCRIPTPATH=`dirname $SCRIPT`

echo "Linking config files from $SCRIPTPATH"

link() {
  FROM="$SCRIPTPATH/../$1"
  TO=$2

  printf "ln -s %s %s\n" $FROM $TO

  rm $TO
  ln -s $FROM $TO
}

link Xdefaults ~/.Xdefaults
link xinitrc ~/.xinitrc
link xmonad ~/.xmonad
link i3 ~/.config
link i3status.conf ~/.i3status.conf
link xcolors ~/.xcolors
link tmux.conf ~/.tmux.conf
link tmux ~/.tmux
link tmuxinator ~/.tmuxinator
link gitconfig ~/.gitconfig
link agignore ~/.agignore
link fish/config.fish ~/.config/fish/config.fish
link fish/functions ~/.config/fish/functions

exit 0
