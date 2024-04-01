#!/bin/zsh

# create symbolic links to zsh, vim and tmux conf files
ln -nfs $HOME/my_works/dotfiles/.zshrc $HOME/.zshrc
ln -nfs $HOME/my_works/dotfiles/.vimrc $HOME/.vimrc
ln -nfs $HOME/my_works/dotfiles/.tmux.conf $HOME/.tmux.conf

# vim expects some folders to exist in the home directory, create those if they don't
mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/.undo
mkdir -p $HOME/.vim/.backup
mkdir -p $HOME/.vim/.swp
