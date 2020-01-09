#!/bin/bash

ln -s ~/.vim/vimrc ~/.vimrc

git -C ~/.vim submodule init
git -C ~/.vim submodule update
