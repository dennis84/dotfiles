#!/bin/sh

# Work in Progress!

# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# git
brew install git

# git browser
brew install tig

# a grep like search tool
brew install ag

# install a newer python version and pip
brew install python

# custom compilation is not needed
brew install vim

# my favorit shell
brew install fish

# install my personal vim config
cd ~
git clone https://github.com/dennis84/vim-config.git
cd vim-config
./install.sh
vim +BundleInstall! +qall

# used by vim-collab
sudo pip install websocket-client

# install dotfiles
cd ~
git clone https://github.com/dennis84/dotfiles.git

# Create symlinks
SCRIPT=`readlink -f $0`
SCRIPTPATH=`dirname $SCRIPT`

link (){
  FROM="$SCRIPTPATH/../$1"
  TO=$2

  printf "ln -s %s %s\n" $FROM $TO

  rm $TO
  ln -s $FROM $TO
}

link agignore ~/.agignore
link mongo-hacker/mongo_hacker.js ~/.mongorc.js
link fish/config.fish ~/.config/fish/config.fish
link fish/functions ~/.config/fish/functions
link tmux.conf.osx ~/.tmux.conf

# TODO: change shell (chsh -s /usr/bin/fish)
