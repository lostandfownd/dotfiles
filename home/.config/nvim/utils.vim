" Open in last edit place
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
au FocusLost * call feedkeys("\<C-\>\<C-n>") " Return to normal mode on FocustLost

" remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.nvim/undo') == 0
    :silent !mkdir -p ~/.nvim/undo > /dev/null 2>&1
  endif
  set undodir=./.nvim-undo//
  set undodir+=~/.nvim/undo//
  set undofile
endif

" keep fasd_nv in sync with ctrl-p
function! s:fasd_update() abort
  if empty(&buftype) || &filetype ==# 'dirvish'
    call jobstart(['fasd', '-A', expand('%:p')])
  endif
endfunction
augroup fasd
  autocmd!
  autocmd BufWinEnter,BufFilePost * call s:fasd_update()
augroup END

" open nerdtree if vim was started with no args
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

let g:ulti_expand_res = 0

function! Ulti_ExpandOrEnter()
  " try to expand ulti snippet
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res
    " done if success
    return ''
  elseif pumvisible()
    " if in menu close the menu and finish the current completion
    return deoplete#mappings#close_popup()
  else
    " otherwise "enter"
    return "\<return>"
  endif
endfunction
