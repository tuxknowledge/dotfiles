#!/bin/bash

: ${UNAME=$(uname)}

pushd ~/dotfiles

# powerline
git submodule update --init

if [ "$UNAME" = Linux ]; then
    # powerline-fonts
    mkdir -p ~/.fonts
    find powerline-fonts/ -name *.ttf -exec ln -s ~/dotfiles/{} ~/.fonts/ \;
    find fonts/ -name *.ttf -exec ln -s ~/dotfiles/{} ~/.fonts/ \;
    fc-cache -vf ~/.fonts

    [ ! -e ~/.xinitrc ] && ln -s ~/dotfiles/x/xinitrc ~/.xinitrc
    [ ! -e ~/.xrdb ] && ln -s ~/dotfiles/x/xrdb ~/.xrdb
    [ ! -e ~/.Xresources ] && ln -s ~/dotfiles/x/Xresources ~/.Xresources
fi

pushd colors/solarized
# solarized
git submodule update --init
popd

pushd vim/bundle/jedi-vim
# jedi-vim
git submodule update --init
popd

pushd vim/bundle/zencoding
# zencoding
git submodule update --init
popd

pushd vim/bundle/command-t
# command-t
git submodule update --init
popd

popd

[ ! -e ~/.profile ] && ln -s dotfiles/profile ~/.profile
[ ! -e ~/.bashrc ] && ln -s dotfiles/bash/bashrc ~/.bashrc
[ ! -e ~/.bash_logout ] && ln -s dotfiles/bash/bash_logout ~/.bash_logout
[ ! -e ~/.bash_aliases ] && ln -s dotfiles/bash/bash_aliases ~/.bash_aliases
[ ! -e ~/.gitconfig ] && ln -s dotfiles/git/gitconfig ~/.gitconfig
[ ! -e ~/.gitk ] && ln -s dotfiles/git/gitk ~/.gitk
[ ! -e ~/.gitignore_global ] && ln -s dotfiles/git/gitignore_global ~/.gitignore_global
[ ! -e ~/.screenrc ] && ln -s dotfiles/screen/screenrc ~/.screenrc
[ ! -e ~/.tmux.conf ] && ln -s dotfiles/tmux/tmux.conf ~/.tmux.conf
[ ! -e ~/.vim ] && ln -s dotfiles/vim ~/.vim
[ ! -e ~/.vimrc ] && ln -s dotfiles/vim/vimrc ~/.vimrc
[ ! -e ~/.gvimrc ] && ln -s dotfiles/vim/gvimrc ~/.gvimrc
[ ! -e ~/.SciTEUser.properties ] && ln -s dotfiles/scite/SciTEUser.properties ~/.SciTEUser.properties

