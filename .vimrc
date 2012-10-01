set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'tpope/vim-fugitive'
Bundle 'tsaleh/vim-align'
Bundle 'groenewege/vim-less'
" ...

Bundle 'scrooloose/nerdtree'
Bundle 'bbommarito/vim-slim'

Bundle 'altercation/vim-colors-solarized'
Bundle 'rodjek/vim-puppet'
Bundle 'kchmck/vim-coffee-script'

Bundle 'mileszs/ack.vim'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"


set expandtab
set sw=2
set tabstop=2
set softtabstop=2
set nu
set cursorline
" colorscheme evening
colorscheme solarized
set bg=dark

set showmode
set guioptions-=T
set ruler
set cc=80

function Over9000()
  highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  match OverLength /\%81v.\+/
endfunc

" Delete trailing white space when saving
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

set guifont=Monaco:h14
