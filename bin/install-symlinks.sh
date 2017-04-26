#!/bin/bash

script_path="$(dirname "$0")"

echo "Linking config files from $script_path"

link() {
  local from="$(readlink -f "$script_path/../$1")"
  local to="$2"
  printf "ln -s %s %s\n" "$from" "$to"

  rm "$to"
  ln -s "$from" "$to"
}

link Xdefaults ~/.Xdefaults
link xinitrc ~/.xinitrc
link i3 ~/.config
link i3status.conf ~/.i3status.conf
link xcolors ~/.xcolors
link tmux.conf ~/.tmux.conf
link tmux ~/.tmux
link gitconfig ~/.gitconfig
link gitignore ~/.gitignore_global
link agignore ~/.agignore
link fish/config.fish ~/.config/fish/config.fish
link fish/functions ~/.config/fish/functions
link ctags ~/.ctags
link alacritty.yml ~/.alacritty.yml
