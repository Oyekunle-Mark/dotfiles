#!/bin/zsh


if [[ -z $1 ]]; then
	echo  "Usage ./setup_dotfiles.sh <environment>"
	echo "<environment> must match the file name with environment specific configs"
	exit 1
fi


#  zsh
cat ./zsh/common > ~/.zshrc
cat ./zsh/$1 >> ~/.zshrc

if [[ -e "./zsh/.private" ]]; then
	cat ./zsh/.private >> ~/.zshrc
fi


# tmux
cat ./tmux/common > ~/.tmux.conf


# vim
cat ./vim/common > ~/.vimrc

# vim expects some folders to exist in the home directory, create those if they don't
mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/.undo
mkdir -p $HOME/.vim/.backup
mkdir -p $HOME/.vim/.swp
