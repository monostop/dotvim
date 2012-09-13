" Remap leader to ","
let mapleader = ","

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
set t_Co=256
colorscheme zenburn

" Overwrite indentation rules for reStructuredText
au FileType rst setl si indentexpr=""

" Sets expandtab for python files
au FileType python setl et

