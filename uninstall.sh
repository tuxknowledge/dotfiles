#!/bin/bash

: ${UNAME=$(uname)}

[ -e ~/.SciTEUser.properties ] && unlink ~/.SciTEUser.properties
[ -e ~/.bash_aliases ] && unlink ~/.bash_aliases
[ -e ~/.bashrc ] && unlink ~/.bashrc
[ -e ~/.gitconfig ] && unlink ~/.gitconfig
[ -e ~/.gitignore_global ] && unlink ~/.gitignore_global
[ -e ~/.gitk ] && unlink ~/.gitk
[ -e ~/.gvimrc ] && unlink ~/.gvimrc
[ -e ~/.profile ] && unlink ~/.profile
[ -e ~/.screenrc ] && unlink ~/.screenrc
[ -e ~/.tmux.conf ] && unlink ~/.tmux.conf
[ -e ~/.vim ] && unlink ~/.vim
[ -e ~/.vimrc ] && unlink ~/.vimrc

if [ "$UNAME" = Linux ]; then
    [ -e ~/.xinitrc ] && unlink ~/.xinitrc
    [ -e ~/.xrdb ] && unlink ~/.xrdb
    [ -e ~/.Xresources ] && unlink ~/.Xresources
    find ~/.fonts -type l -exec unlink {} \;
fi

