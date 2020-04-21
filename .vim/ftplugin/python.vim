setlocal tabstop=8
setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4

" Toggle colorcolumn
function! ColorColumnToggle()
    if &colorcolumn
        setlocal colorcolumn=0
    else
        setlocal colorcolumn=72,79
    endif
endfunction
