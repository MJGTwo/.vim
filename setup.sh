#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ln -s $DIR/vimrc ~/.vimrc

git -C ~/.vim submodule init
git -C ~/.vim submodule update
