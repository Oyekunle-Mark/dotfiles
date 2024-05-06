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
alias ga='git add'
alias gco='git commit'
alias gpu='git push'
# git command to update the dotfiles from any location in the file system
# assumes the dotfiles git folder is cloned to $HOME/my_works/
alias dot_g='/usr/bin/git --git-dir=$HOME/my_works/dotfiles/.git --work-tree=$HOME/my_works/dotfiles'

# trusty old ls
alias ll='ls -l --color -h --group-directories-first'
alias la='ls -la --color -h --group-directories-first'
alias lt='tree -L 2' # throw in some tree directory printing up to the second level

autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

# set the timezone to GMT
TZ='Europe/London'; export TZ

# tmux aliases
alias t='tmux'
alias tn='tmux new-session'
alias tk='tmux kill-session'
alias ta='tmux attach'
alias tl='tmux ls'
alias ts='tmux switch'
alias tks='tmux kill-server'

# file operation alias

# find a file recursively(matching regex), case insensitive(-iname) starting from current director, e.g. find . -inmae "foo*"
# take care to use the " " for recursive find using find in above example
alias ff='find . -iname'

# find a work recursively using grep, e.g. grep -rni "string" .
# also take note of " "
alias fw='grep -rni'

# alias that serves as a convenience for finding aliases
alias fa='alias | grep'

# alias for managing system power
alias off='systemctl poweroff'
alias hib='systemctl suspend'

# vim alias because a 3 letter word is too long to type :)
alias v='vim'
