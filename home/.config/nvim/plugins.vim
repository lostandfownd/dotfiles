"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif


set runtimepath+=/Users/vladimiriacob/.dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/vladimiriacob/.dein')
" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
" themes
call dein#add('junegunn/seoul256.vim')

" autocompletes
call dein#add('Shougo/deoplete.nvim')
call dein#add('zchee/deoplete-jedi')
call dein#add('carlitux/deoplete-ternjs')

" utils
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-surround')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('Raimondi/delimitMate')
call dein#add('scrooloose/nerdtree')
call dein#add('itchyny/lightline.vim')
call dein#add('tpope/vim-fugitive')

" syntax
call dein#add('isRuslan/vim-es6')
call dein#add('pangloss/vim-javascript')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" Set python paths
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

"End dein Scripts-------------------------