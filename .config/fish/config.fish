set fish_greeting

set -g fish_user_paths "/usr/local/bin" "/usr/local/sbin" "$HOME/.rbenv/shims" $fish_user_paths
set -x EDITOR /usr/local/bin/subl

rbenv rehash >/dev/null ^&1
