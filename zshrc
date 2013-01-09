#!/usr/bin/env zsh

DOTFILES=$HOME/dotfiles
OHMYZSH=$HOME/.oh-my-zsh

# Load all of the config files in oh-my-zsh that end in .zsh
for config_file ($OHMYZSH/lib/*.zsh) source $config_file

# Load chosen oh-my-zsh plugins
for plugin in archlinux vi-mode extract; do
  source $OHMYZSH/plugins/$plugin/$plugin.plugin.zsh
done

# Load all of my zsh files in zsh/
for zsh_file ($DOTFILES/zsh/*.zsh) source $zsh_file

# Add cool history search
source $DOTFILES/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

# Add fish-like syntax highlighting
source $DOTFILES/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable completion after all plugins are loaded
autoload -U compinit
compinit -i

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# <Ctrl>+ws don't work in vim
stty -ixon -ixoff
