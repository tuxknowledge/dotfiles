#!/bin/bash

pushd ~

unlink .SciTEUser.properties
unlink .bash_aliases
unlink .bashrc
unlink .gitconfig
unlink .gitignore_global
unlink .gitk
unlink .gvimrc
unlink .profile
unlink .screenrc
unlink .tmux.conf
unlink .vim
unlink .vimrc

popd

