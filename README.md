# dotfiles
my dot files

I've set this up with a bare git repository...

following this tutorial: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

Starting from scratch

git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc

you can then use the alias config to add and commit

config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push

Installing dotfiles to new system


echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
echo ".cfg" >> .gitignore 
git clone --bare <git-repo-url> $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

this then checks the content from repo
config checkout
