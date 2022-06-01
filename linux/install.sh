#!/bin/bash

install_neovim () {
  mkdir -p ~/.config/nvim
  cp $PWD/neovim/init.vim ~/.config/nvim/
}

install_tmux () {
  cp $PWD/tmux/.tmux.conf ~/
}

install_vim () {
  cp $PWD/vim/.vimrc ~/

}

while [[ "$1" =~ ^- && ! "$1" == "--" ]]; do case $1 in
  -n | --neovim)
    echo "Installing Neovim Config"
    install_neovim
    exit
    ;;
  -t | --tmux )
    echo "Installing Tmux Config"
    install_tmux
    exit
    ;;
  -v | --vim )
    echo "Installing Vim Config"
    install_vim
    exit
    ;;
  -h | --help )
    echo "These are the current flags --neovim --vim --tmux --help"
esac; shift; done
if [[ "$1" == '--' ]]; then shift; fi
