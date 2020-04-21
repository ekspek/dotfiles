set textwidth=72
set colorcolumn=50,72

" Toggle colorcolumn
function! ColorColumnToggle()
    if &colorcolumn
        setlocal colorcolumn=0
    else
        setlocal colorcolumn=50,72
    endif
endfunction
