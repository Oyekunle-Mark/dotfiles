#!/bin/zsh

if [[ -z $1 ]]; then
	echo "Usage ./setup_dotfiles.sh <environment>"
	echo "Where <environment> is the name of the environment specific config files for this machine.\n"
	exit 1
fi

echo "\nBuilding config files for the $1 environment...\n"

# builds a config file by merging
# $1 => folder that contains the config files for a utility
# $2 => environment
# $3 => the final config file as a path to where it should be located
#
# 1: common (which represents the common config we want in all environments for this utilility)
# 2: <environment> (which represents the environment specific config specific to the machine we run this script on for this utility)
# 3: .private (sensitive information we do not check into git and share with other machines)
build_file() {
	echo "\nBuilding $3...\n"
	rm -f $3
	touch $3

	if [[ -e "./$1/common" ]]; then
		echo "Merging ./$1/common into $3..."
		cat ./$1/common >> $3
	else
		echo "Could not find ./$1/common. Skipping..."
	fi

	if [[ -e "./$1/$2" ]]; then
		echo "Merging ./$1/$2 into $3..."
		cat ./$1/$2 >> $3
	else
		echo "Could not find the ./$1/$2 environment specific file. Skipping..."
	fi

	if [[ -e "./$1/.private" ]]; then
		echo "Merging the environement specific private file ./$1/.private into $3..."
		cat ./$1/.private >> $3
	else
		echo "Could not find a .private file in ./$1. Skipping..."
	fi

	echo "$3 built successfully.\n"
}


#  build zsh
build_file zsh $1 ~/.zshrc

# build tmux
build_file tmux $1 ~/.tmux.conf


# vim expects some folders to exist in the home directory, create those if they don't
mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/.undo
mkdir -p $HOME/.vim/.backup
mkdir -p $HOME/.vim/.swp

# build vim
build_file vim $1 ~/.vimrc

# build git
build_file git $1 ~/.gitconfig

# all configs built successfully. log the success message
echo "\nAll config files have been built for the $1 environment. Enjoy :)\n"
