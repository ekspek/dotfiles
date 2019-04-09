setlocal wrap
setlocal spell
nnoremap <buffer> <F5> :Start arara -v %<cr>
nnoremap <buffer> <leader>c I%<esc>
inoremap <buffer> <c-b> \textbf{
inoremap <buffer> <c-i> \textit{
iabbrev <buffer> \\\ \textbackslash
iabbrev euqation equation
