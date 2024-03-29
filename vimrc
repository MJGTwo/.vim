inoremap jk <ESC>
let mapleader = " "
set spell spelllang=en_us
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set laststatus=2
set rnu
set backspace=indent,eol,start

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"Plug-ins
packadd! onedark.vim
packadd! vim-polyglot
packadd! lightline.vim
packadd! vim-airline
packadd! vim-airline-themes
packadd! fzf.vim
packadd! vim-gitgutter

"theme
syntax on

if !has('gui_running')
  set t_Co=256
endif
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" NERDTree

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_symbols.space = "\ua0"
let g:airline_powerline_fonts = 1
"theme
let g:onedark_hide_endofbuffer=1
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
let g:airline_theme='onedark'
colorscheme onedark
