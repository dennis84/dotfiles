#!/bin/sh

rm -rf $HOME/dotfiles/zsh/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/dotfiles/zsh/zsh-syntax-highlighting"

rm -rf $HOME/dotfiles/zsh/zsh-history-substring-search
git clone git://github.com/zsh-users/zsh-history-substring-search $HOME/dotfiles/zsh/zsh-history-substring-search

rm -rf $HOME/dotfiles/mongo-hacker
git clone git://github.com/TylerBrock/mongo-hacker.git
