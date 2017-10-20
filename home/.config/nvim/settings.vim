" Set color scheme

" Seoul256 - usual theme
let g:seoul256_background = 235
colo seoul256
hi LineNr ctermbg=235
hi CursorLineNr ctermbg=235

" Github theme - presentation theme
" colo github
" hi LineNr ctermbg=15

set relativenumber number " use relative numbers with the current line showing the current line number
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set smartindent
set mouse=a

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
