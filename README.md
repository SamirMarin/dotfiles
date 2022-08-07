# dotfiles

Dotfiles included:

* vim -> vimrc
* nvim -> vimrc (sourced from vim vimrc)

To add these dot files:

get a copy of this repo into working dir

```
cd ${this_repo}
```
```
bash link_dot_vim.sh
```

This will link the vimrc viles for vim and neovim. Note the vimcr files comes with several vim plugins. This script will also install https://github.com/junegunn/vim-plug manager for vim and neovim.

once the plug plugin manager is installed you can install the plugins by running

```
:PlugUpdate
```
on vim and nvim


### neovim deoplete
the deoplete plug in https://github.com/Shougo/deoplete.nvim for nvim requires python3 enabled in nvim and thus nvim will complain to enable you can run

```
pip3 install --user pynvim
```
and withing nvim if pluging have been installed
```
:UpdateRemotePlugins
```
see requirments for more details: https://github.com/Shougo/deoplete.nvim#requirements

### Ack, Ag (grep like seraches)
ack plug in allow you to use Ag https://github.com/ggreer/the_silver_searcher by `:Ag {search}` but to do so you need to install, for mac use:
```
brew install the_silver_searcher
```
