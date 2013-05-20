#!/bin/bash

git submodule update --init

pushd colors/solarized
git submodule update --init
popd

pushd vim/bundle/jedi-vim
git submodule update --init
popd

pushd vim/bundle/zencoding
git submodule update --init
popd

pushd vim/bundle/command-t
git submodule update --init
popd

pushd ~

ln -s dotfiles/profile .profile
ln -s dotfiles/bash/bashrc .bashrc
ln -s dotfiles/bash/bash_aliases .bash_aliases
ln -s dotfiles/git/gitconfig .gitconfig
ln -s dotfiles/git/gitk .gitk
ln -s dotfiles/git/gitignore_global .gitignore_global
ln -s dotfiles/screen/screenrc .screenrc
ln -s dotfiles/tmux/tmux.conf .tmux.conf
ln -s dotfiles/vim/vimrc .vimrc
ln -s dotfiles/vim/gvimrc .gvimrc
ln -s dotfiles/vim .vim
ln -s dotfiles/scite/SciTEUser.properties .SciTEUser.properties
popd
