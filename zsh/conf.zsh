#!/usr/bin/env zsh

# Export some variables
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/bin/core_perl:$PATH"
export PATH="/usr/bin/vendor_perl:$PATH"

# Export common variables
export PATH="$HOME/bin:$PATH"
export PATH="$DOTFILES/scripts:$PATH"
export PATH="$HOME/code/Play20:$PATH"

# Ruby gems in the path
export PATH="$HOME/.gem/ruby/1.9.1/bin:$PATH"

# Ruby bundler, put gems in the user home
export GEM_HOME="$HOME/.gem/ruby/1.9.1"
