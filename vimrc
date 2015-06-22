" Remap leader character from \ to ,
let mapleader = ","

" Enable mouse
set mouse=a

" For handling plugins
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" Tabs
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Turn on syntax coloring
syntax on
filetype plugin indent on

" Unusefull stuff
set nocompatible
set modelines=0

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

" Sets indentation to 2 spaces for html files
au FileType html setl sw=2 et ts=2

" Set include jinja syntax for html files
au FileType html setl syntax=jinja
au FileType javascript setl syntax=jquery sw=2 et ts=2

" Enabling omni completion:
au FileType python set omnifunc=pythoncomplete#Complete
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" Settings for supertab. Setting default to 'context' completion for python files
let g:SuperTabDefaultCompletionType ="context" 
set completeopt=menuone,longest,preview

" Remap jj to <ESC>
inoremap jj <ESC>
cnoremap jj <ESC>

" Nerdtree
let g:NERDTreeDirArrows=0
nmap <F7> :NERDTreeToggle<CR>
nmap <S-F7> :NERDTreeClose<CR>

