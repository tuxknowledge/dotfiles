#!/bin/bash

# powerlione
git submodule update

pushd colors/solarized
# solarized
git submodule update
popd

pushd vim/bundle/jedi-vim
# jedi-vim
git submodule update
popd

pushd vim/bundle/emmet-vim
# emmet-vim
git submodule update
popd

pushd vim/bundle/command-t
# command-t
git submodule update
popd


