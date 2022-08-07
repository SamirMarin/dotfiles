#!/bin/bash

VIM_VIMRC_DIR=".vim/"
NEOVIM_VIMRC_DIR=".config/nvim"

ln -nfs "$PWD/$VIM_VIMRC_DIR" "${HOME}"
ln -nfs "$PWD/$NEOVIM_VIMRC_DIR" "${HOME}/.config"

PLUG_VIM_FILE="${HOME}/.vim/autoload/plug.vim"
PLUG_NVIM_FILE="${HOME}/.local/share/nvim/site/autoload/plug.vim"

if [ ! -f ${PLUG_VIM_FILE} ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
if [ ! -f ${PLUG_NVIM_FILE} ]; then
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi

