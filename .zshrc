HISTSIZE=100
HISTFILE=~/.zsh_history
SAVEHIST=100

export PATH="/usr/local/bin:$PATH"

autoload -U compinit
autoload -U zstyle+
autoload -U vcs_info
autoload -U colors

compinit
colors

setopt HIST_IGNORE_DUPS
setopt prompt_subst

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats " ($fg[yellow]%b$reset_color)"

fpath=($fpath ~/.zsh)

alias ls='ls -G'

precmd() {
   vcs_info
}

PROMPT='⚡️  $fg_bold[blue]%n@%m$reset_color: %2c${vcs_info_msg_0_} 👉  '