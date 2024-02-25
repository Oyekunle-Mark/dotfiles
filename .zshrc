# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/chief_oye/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

force_color_prompt=yes

# git aliases
alias g='git'
alias gs='git status'
alias gd='git diff'

alias ll='ls -al'

export PATH="$PATH:/opt/riscv/bin"

autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

# set the timezone to GMP
TZ='Europe/London'; export TZ

# tmux aliases
alias t='tmux'
alias tn='tmux new-session'
alias tk='tmux kill-session'
alias ta='tmux attach'
alias tl='tmux ls'
