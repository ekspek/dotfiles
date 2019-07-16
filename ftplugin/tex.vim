setlocal wrap
setlocal spell
nnoremap <buffer> <F5> :Start arara -v %<cr>
nnoremap <buffer> <leader>c I%<esc>
inoremap <buffer> <c-b> \textbf{
iabbrev <buffer> \\\ \textbackslash
iabbrev euqation equation
