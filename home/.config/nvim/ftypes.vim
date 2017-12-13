" File type mappings
call deoplete#enable()
autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr>
autocmd CompleteDone * pclose " To close preview window of deoplete automagicallyall

augroup vagrant
  au!
  au BufRead,BufNewFile Vagrantfile set filetype=ruby
augroup END

au FileType python setl sw=4 sts=4
au FileType go setl sw=4 sts=4
