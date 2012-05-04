" Remap leader character from \ to ,
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
if has('gui_running')
	colorscheme mayansmoke
endif

" Overwrite indentation rules for reStructuredText
au FileType rst setl si indentexpr=""

" Sets expandtab for python files
au FileType python setl et

" Sets indentation to 2 spaces for html files
au FileType html setl sw=2 et ts=2

" Set include jinja syntax for html files
au FileType html setl syntax=jinja
" Settings for supertab. Setting default to user completion for python files
" let g:SuperTabDefaultCompletionType ="<c-x><c-u>" for use with :IPython

" Set up pydiction dictionary location
