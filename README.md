# dotfiles
my dot files

I've set this up with a bare git repository...

following this tutorial: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

***Starting from scratch, you are creating your own, not cloning existing dot files.***

creates a folder ~/.cfg which is a Git bare repository that will track our files.
```
git init --bare $HOME/.cfg
```
create an alias config which we will use instead of the regular git 
```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
set a flag - local to the repository - to hide files we are not explicitly tracking yet
```
config config --local status.showUntrackedFiles no
```
add the alias definition by hand to your .bashrc or use this command
```
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```


you can then use the alias config to add and commit

***Example***
```
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```

***Installing dotfiles from repo to new system aka: this repo***

make sure you have committed the alias to your .bashrc
```
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```
make sure source repository ignores the folder where you'll clone it, so that you don't create weird recursion problems
```
echo ".cfg" >> .gitignore 
```
clone your dotfiles into a bare repository in a "dot" folder of your $HOME
```
git clone --bare <git-repo-url> $HOME/.cfg
```
Define the alias in the current shell scope
```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
Checkout the actual content from the bare repository to your $HOME:
```
config checkout
```
