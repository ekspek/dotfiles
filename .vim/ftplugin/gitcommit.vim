" Toggle colorcolumn
function! ColorColumnToggle()
	if &colorcolumn
		setlocal colorcolumn=0
	else
		setlocal colorcolumn=50,72
	endif
endfunction

set colorcolumn=50,72
