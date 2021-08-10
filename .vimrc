syntax on
set number

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab
set encoding=utf-8
set autoindent
set fileformat=unix

set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
set laststatus=2
:imap ii <Esc>

set splitbelow

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'avakhov/vim-yaml'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/NLKNguyen/papercolor-theme'
Plug 'https://github.com/itchyny/lightline.vim'
" Initialize plugin system
call plug#end()
set t_Co=256
" colorscheme PaperColor
autocmd GUIEnter * set vb t_vb=

set background=dark
let g:lightline = {'colorscheme': 'wombat'}
