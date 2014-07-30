PROMPT="(ノಠ益ಠ)ノ %B%n@%m:%b %2c> "

HISTSIZE=100
HISTFILE=~/.zsh_history
SAVEHIST=100

export PATH="/usr/local/bin:$PATH"

autoload -U compinit
autoload -U zstyle+

compinit

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always

fpath=($fpath ~/.zsh)

alias ls='ls -G'

setopt HIST_IGNORE_DUPS
