#!/bin/sh

# Absolute path to this script
SCRIPT=`readlink -f $0`
# Absolute path this script is in
SCRIPTPATH=`dirname $SCRIPT`

echo "Linking config files from $SCRIPTPATH"

link (){
  FROM="$SCRIPTPATH/../$1"
  TO=$2

  printf "ln -s %s %s\n" $FROM $TO

  rm $TO
  ln -s $FROM $TO
}

link Xdefaults ~/.Xdefaults
link xinitrc ~/.xinitrc
link xmonad ~/.xmonad
link xcolors ~/.xcolors
link tmux.conf ~/.tmux.conf
link tmux ~/.tmux
link tmuxinator ~/.tmuxinator
link zshrc ~/.zshrc
link agignore ~/.agignore
link mongo-hacker/mongo_hacker.js ~/.mongorc.js
