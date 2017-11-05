" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap <silent> + :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "vertical resize " . (winheight(0) * 2/3)<CR>

" Map ; to : to avoid mistakes
nnoremap ; :
nmap <silent> ,/ :nohlsearch<CR>

" Map ; to : to avoid mistakes
nnoremap ; :
nmap <silent> ,/ :nohlsearch<CR>

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Tab navigatin mappings
map tn <Esc>:enew<CR>
map tc <Esc>:tabclose<CR>
map tf <Esc>:tabfirst<CR>
map tp <Esc>:tabp<CR>
map tx <Esc>:tabn<CR>
map tl <Esc>:tablast<CR>

" split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Clear search highlights
noremap <silent><leader>/ :nohls<CR>

" fold html tag
nnoremap <leader>ft Vatzf

" deopelete kb
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" open a new vertical split
nnoremap <leader>w <C-w>v<C-w>l

" Show buffer list
nnoremap <leader>b :ls<CR>:buffer<Space>

let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_move_highlight = 0

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-sn)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-sn)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" tmux nav
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
