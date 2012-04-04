" For handling plugins
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" Tabs
set shiftwidth=4
set tabstop=4

" Turn on syntax coloring
syntax on
filetype plugin indent on

" Set on line numbering and map F2 to toggle for easy copy code:
set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Set colorscheme
:colorscheme mayansmoke
