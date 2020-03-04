setlocal tabstop=8
setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4
 
nnoremap <buffer> <F5> :AsyncRun -mode=term -pos=bottom -rows=10 -focus=0 python3 %<cr>

" Toggle colorcolumn
function! ColorColumnToggle()
	if &colorcolumn
		setlocal colorcolumn=0
	else
		setlocal colorcolumn=72,79
	endif
endfunction
