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
Bundle 'https://github.com/jpo/vim-railscasts-theme.git'
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

set backupdir=$TEMP,$TMP,.
set nobackup
set nowritebackup
set expandtab
set sw=2
set tabstop=2
set softtabstop=2
set nu
set cursorline
" colorscheme evening
colorscheme solarized
"set bg=dark
set bg=light

set showmode
set guioptions-=T
set ruler
set cc=80
set wildmenu

set guifont=Monaco:h14

" Delete trailing white space when saving
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

" Removes blank spaces and condenses blank lines
func! CondenseBlankLines()
  %s/\s\+$//e
  %s/\n\{3,}/\r\r/e
endfunc

autocmd BufWritePost <buffer> call CondenseBlankLines()
autocmd BufWritePost <buffer> set expandtab
autocmd BufWritePost <buffer> retab

cnoreabbr ntf NERDTreeFind
cnoreabbr nt NERDTree
cnoreabbr ctf CommandTFlush
cnoreabbr ct CommandT
cnoreabbr spaces call CondenseBlankLines()
cnoreabbr dws call DeleteTrailingWS()
cnoreabbr cws call DeleteTrailingWS()
cnoreabbr Wa wa
cnoreabbr W w
cnoreabbr vrc source ~/.vimrc

set wildignore+=buildconfig,.git,*.pyc,*~,node_modules
set hlsearch
set magic
set showmatch
let g:CommandTMaxFiles=20000
let g:CommandTMaxDepth=25

au BufNewFile,BufRead *.soy set syntax=soy
"au BufNewFile,BufRead *.soy set filetype=soy

vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

set noerrorbells visualbell t_vb=
