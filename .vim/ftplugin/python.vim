set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
 
nnoremap <buffer> <F5> :AsyncRun -mode=term -pos=bottom -rows=10 -focus=0 python3 %<cr>
