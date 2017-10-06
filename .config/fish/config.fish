set fish_greeting

set -g fish_user_paths "$HOME/.rbenv/shims" "/usr/local/bin" "/usr/local/sbin" $fish_user_paths
set -x EDITOR /usr/local/bin/subl

rbenv rehash >/dev/null ^&1
