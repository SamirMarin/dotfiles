#!/bin/bash

VIM_VIMRC_DIR=".vim/"
NEOVIM_VIMRC_DIR=".config/"

ln -nfs "$PWD/$VIM_VIMRC_DIR" "${HOME}/"
ln -nfs "$PWD/$NEOVIM_VIMRC_DIR" "${HOME}/"

