# Export path's
set -x PATH /sbin /usr/local/bin /usr/bin /bin /usr/local/sbin /usr/sbin $PATH
set -x PATH "$HOME/bin" "$HOME/dotfiles/scripts" $PATH
set -x PATH "$HOME/.cargo/bin" $PATH

set -x GEM_HOME "$HOME/.cargo/bin"

set -x EDITOR "nvim"
set -x BROWSER "firefox"

set fish_greeting ""

if status --is-login
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    exec startx -- -keeptty
  end
end
