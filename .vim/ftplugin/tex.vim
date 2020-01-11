setlocal wrap
setlocal spell
nnoremap <buffer> <F5> :Start arara -v thesis.tex -L qn<cr>
nnoremap <buffer> <c-f>c I%<esc>
iabbrev <buffer> \\\ \textbackslash
iabbrev euqation equation
set iskeyword+=:
