#!/bin/zsh

#  zsh
cat ./zsh/common > ~/.zshrc
cat ./zsh/$1 >> ~/.zshrc
cat ./zsh/.private >> ~/.zshrc


# tmux
cat ./tmux/common > ~/.tmux.conf


# vim
cat ./vim/common > ~/.vimrc

# vim expects some folders to exist in the home directory, create those if they don't
mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/.undo
mkdir -p $HOME/.vim/.backup
mkdir -p $HOME/.vim/.swp
