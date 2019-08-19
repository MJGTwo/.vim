# A Collection of vim Configurations

Current modifications:

* map `jk` to <ESC>
* map mapleader to `" "`
* spellcheck
* onedark theme with polyglot
* lightline and air-line
* tab preferences
* relative line numbering
* fzf support
* gitgutter support
* NERDTree

## Setup
 
* Clone the repo as `.vim` in your home directory, symlink `.vimrc` to `.vim/vimrc` (i.e. `ln -s ~/.vim/vimrc ~/.vimrc`). 
* `cd` into the directory `.vim`, run `git submodule init` to initialize the paths to the sub-modules, then run `git submodule update` to clone the plugins. 
