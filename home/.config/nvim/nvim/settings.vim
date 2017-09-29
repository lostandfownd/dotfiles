" Set color scheme
let g:seoul256_background = 235
colo seoul256
" set background=dark
" colo solarized
hi LineNr ctermbg=235
hi CursorLineNr ctermbg=235

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

" ultiSnips settings
let g:UltiSnipsUsePythonVersion = 3
let g:ultisnips_python_style="google"

" custom snips
let g:UltiSnipsSnippetsDir = "~/.config/nvim/snips"
let g:UltiSnipsSnippetDirectories = ["UltiSnips", "snips"]

" triggering
let g:UltiSnipsExpandTrigger='<leader>w'
let g:UltiSnipsJumpForwardTrigger='<leader>w'
let g:UltiSnipsJumpBackwardTrigger='<leader>e'

" ternjs
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'
let g:tern#filetypes = [
  \ 'jsx',
  \ 'javascript.jsx',
  \ 'vue'
  \ ]

" syntastic
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = []

" terraform
let g:terraform_align=1