"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif


set runtimepath+=/home/krom/.dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/krom/.dein')
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

" snippets
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')

" utils
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-surround')
call dein#add('vim-airline/vim-airline')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('Raimondi/delimitMate')
call dein#add('scrooloose/nerdtree')
call dein#add('tpope/vim-fugitive')

" syntax
call dein#add('isRuslan/vim-es6')
"call dein#add('leafgarland/typescript-vim')
call dein#add('pangloss/vim-javascript')
call dein#add('posva/vim-vue')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" Set python paths
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

"End dein Scripts-------------------------
