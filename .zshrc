# RBEnv
eval "$(rbenv init - zsh)"

# Load
autoload -Uz compinit && compinit
autoload -Uz vcs_info
autoload -U colors && colors

# Git autocomplete
echo 'autoload -Uz compinit && compinit' >> ~/.zshrc

# Prompt
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '(%b)'
setopt PROMPT_SUBST
PROMPT='%2~ %F{196}${vcs_info_msg_0_}%f > '
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
autoload -Uz compinit && compinit

# Aliases
alias ls='ls -G'
autoload -Uz compinit && compinit
