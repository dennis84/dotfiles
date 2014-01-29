#!/bin/sh

mkdir -p ~/code
cd ~/code
hg clone https://vim.googlecode.com/hg/ vim

sh $HOME/dotfiles/scripts/vim-upgrade.sh
