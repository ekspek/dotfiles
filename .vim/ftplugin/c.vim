nnoremap <buffer> <F5> :AsyncRun -mode=term -pos=bottom -rows=10 -focus=0 gcc -Wall -pedantic -o %< %<cr>
