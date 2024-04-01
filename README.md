# dotfiles

*dotfiles*(plain text configuration files) of terminal based programs I use heavily.

You will find configuration files for:

1. [vim](./.vimrc)
2. [tmux](./.tmux.conf)
3. [zsh](./.zshrc)

## Usage

This section expects this repository to be cloned to the `$HOME/my_works` folder. If the repository is located someplace else, update the `dot_g` alias in `.zshrc`, and the `setup_dotfiles.sh` script with the appropriate path.


Run `setup_dotfiles.sh`. The script creates symbolic links from the dotfiles in your home directory(creates them if they don't exist, updates them otherwise) to the files in this repository.
It also performs other basic operations like creating folders used by vim to store undo and backup history.


The `dot_g` alias in `.zshrc` allows you to pull(and perform other git operations) dotfiles from anywhere in the filesystem.
