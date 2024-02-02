#!/bin/bash

mkdir -p ~/.config

ln -s ~/dotfiles/xinitrc ~/.xinitrc
ln -s ~/dotfiles/i3 ~/.config/i3
ln -s ~/dotfiles/i3status.conf ~/.i3status.conf
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore ~/.gitignore_global
ln -s ~/dotfiles/agignore ~/.agignore
ln -s ~/dotfiles/fish ~/.config/fish
ln -s ~/dotfiles/ctags ~/.ctags
ln -s ~/dotfiles/alacritty ~/.config/alacritty
ln -s ~/dotfiles/wezterm/config ~/.config/wezterm
ln -s ~/dotfiles/wezterm/wezterm.lua ~/.wezterm.lua

unamestr="$(uname)"
if [[ "$unamestr" == 'Darwin' ]]; then
  ln -s ~/dotfiles/tmux.conf.osx ~/.tmux.conf
else
  ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
fi

git config --global core.excludesfile ~/.gitignore_global
