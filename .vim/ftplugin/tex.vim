setlocal wrap
setlocal spell
nnoremap <buffer> <F5> :AsyncRun -mode=term -pos=bottom -rows=10 -focus=0 arara -v -L qn %<cr>
nnoremap <buffer> <c-f>c I%<esc>
iabbrev <buffer> \\\ \textbackslash
iabbrev euqation equation
set iskeyword+=: