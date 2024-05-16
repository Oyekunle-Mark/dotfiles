#!/bin/zsh

#  zsh
cat ./zsh/common > ~/.zshrc
cat ./zsh/`$1` >> ~/.zshrc
cat ./zsh/.private >> ~/.zshrc
echo "alias dot_g='/usr/bin/git --git-dir=`realpath ./git` --work-tree=`realpath .`'" >> ~/.zshrc

# tmux
# tmux sym link
ln -nfs $HOME/my_works/dotfiles/.tmux.conf $HOME/.tmux.conf

# vim
# vim symbolic link
ln -nfs $HOME/my_works/dotfiles/.vimrc $HOME/.vimrc
# vim expects some folders to exist in the home directory, create those if they don't
mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/.undo
mkdir -p $HOME/.vim/.backup
mkdir -p $HOME/.vim/.swp
