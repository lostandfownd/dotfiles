" Set color scheme
colo seoul256

set nocursorline
set relativenumber number
set signcolumn="yes"
set regexpengine=1
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set smartindent
set mouse=a
set termguicolors

set statusline=%=%P\ %f\ %m
set fillchars=vert:\ ,stl:\ ,stlnc:\
set laststatus=2
set noshowmode

" Custom invisibles
set list
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" use system clipblard for copy/paste
set clipboard=unnamedplus

" CTRL-P ignore paths
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](tmp|node_modules|cex_components|bower_components|\.git)'
    \ }

" File tree on F7
map <silent> <F7> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='<CR>'

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.nvim/viminfo

" delimitMate settings
let delimitMate_expand_cr=1

" ternjs
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'
let g:tern#filetypes = [
  \ 'jsx',
  \ 'javascript.jsx',
  \ 'js'
  \ ]
