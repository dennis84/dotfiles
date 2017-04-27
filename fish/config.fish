# Export path's
set -x PATH /sbin /usr/local/bin /usr/bin /bin /usr/local/sbin /usr/sbin $PATH
set -x PATH "$HOME/bin" "$HOME/dotfiles/scripts" $PATH
set -x PATH "$HOME/code/play" $PATH
set -x PATH "$HOME/.gem/ruby/2.0.0/bin" $PATH
set -x PATH "/root/.gem/ruby/2.0.0/bin" $PATH
set -x PATH "$HOME/.cabal/bin" $PATH
set -x PATH "$HOME/.cargo/bin" $PATH
set -x PATH "/usr/local/heroku/bin" $PATH

set -x GEM_HOME "$HOME/.gem/ruby/2.0.0"
set -x GEM_HOME "$HOME/.cargo/bin"
set -x ANDROID_HOME "$HOME/code/android"

set -x EDITOR "nvim"
set -x BROWSER "chromium"

set fish_greeting ""

if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx -- -keeptty
  end
end

switch (uname)
  case Darwin
    set -x OPENSSL_INCLUDE_DIR "/usr/local/opt/openssl/include"
    set -x DEP_OPENSSL_INCLUDE "/usr/local/opt/openssl/include"
end
