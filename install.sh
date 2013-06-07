#!/bin/bash

: ${UNAME=$(uname)}

cd ~/dotfiles

# powerline
git submodule update --init

# powerline-fonts
if [ "$UNAME" = Linux ]; then
    mkdir -p ~/.fonts
    find powerline-fonts/ -name *.ttf -exec ln -s ~/dotfiles/{} ~/.fonts/ \;
    fc-cache -vf ~/.fonts
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

