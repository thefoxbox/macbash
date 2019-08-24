syntax on
set nohls
set ruler
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set noerrorbells visualbell t_vb=

autocmd GUIEnter * set visualbell t_vb=
autocmd BufRead,BufNewFile *.rb set filetype=ruby
autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2 expandtab
