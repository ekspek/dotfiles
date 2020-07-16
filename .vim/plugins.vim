"- - - - - - - - - "
" Plugin settings  "
"- - - - - - - - - "

""""""""""""""""""""""""""""""""""
" dein.vim code block
if &compatible
    set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    " Adding a plugin needs to be followed by :call dein#install()
    " Removing a plugin needs to be followed by :call dein#check_clean() and :call dein#recache_runtimepath()
    call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

    call dein#add('junegunn/fzf.vim')
    call dein#add('junegunn/vim-easy-align')
    call dein#add('vim-airline/vim-airline')
    call dein#add('mbbill/undotree')
    call dein#add('vim-airline/vim-airline-themes')
    call dein#add('garbas/vim-snipmate')
    call dein#add('tomtom/tlib_vim')
    call dein#add('MarcWeber/vim-addon-mw-utils')
    call dein#add('kshenoy/vim-signature')
    call dein#add('sheerun/vim-polyglot')
    call dein#add('thinca/vim-visualstar')
    call dein#add('preservim/nerdcommenter')
    call dein#add('Yggdroot/indentLine')
    call dein#add('francoiscabrol/ranger.vim')
    call dein#add('rbgrouleff/bclose.vim')
    call dein#add('morhetz/gruvbox')
    call dein#add('triglav/vim-visual-increment')
    call dein#add('tpope/vim-fugitive')

    call dein#add('lervag/vimtex')
    call dein#add('tbastos/vim-lua')
    call dein#add('tmhedberg/SimpylFold')

    "call dein#add('ludovicchabant/vim-gutentags', { 'on_ft': ['python', 'c', 'cpp', 'lua', 'tex'], })
    "call dein#add('majutsushi/tagbar', { 'on_ft': ['python', 'c', 'cpp', 'lua', 'tex'], })

    call dein#add('neoclide/coc.nvim', { 'merged': 0, 'rev': 'release', 'on_ft': ['python', 'c', 'cpp', 'lua', 'tex', 'json'], })
    let g:coc_global_extensions = ['coc-json', 'coc-python', 'coc-clangd', 'coc-tabnine']

    "call dein#disable('coc.nvim')

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable
""""""""""""""""""""""""""""""""""

" Default tex filetype
let g:tex_flavor='latex'
let g:polyglot_disabled = ['latex']

" Set color scheme
"colorscheme base16-default-dark
colorscheme gruvbox
let g:airline_theme='base16'

" Undo tree toggle mapping
nnoremap <F6> :UndotreeToggle<cr>

" Enable powerline fonts
let g:airline_powerline_fonts = 1
"let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

" Enable fzf
set rtp+=~/.fzf
nnoremap <leader>F :Files!<cr>
nnoremap <leader>B :Buffers<cr>
nnoremap <leader>L :BLines<cr>
nnoremap <leader>A :Ag!<cr>

" Indent lines guides
let g:indentLine_enabled = 0
nnoremap <leader>mi :IndentLinesToggle<cr>

" EasyAlign mappings
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Tagbar toggle
"nnoremap <F7> :TagbarToggle<cr>

"- - - - - - - - - "
" Plugin settings  "
"- - - - - - - - - "
if filereadable("/root/.vim/coccfg.vim") && dein#is_sourced('coc.nvim')
    source ~/.vim/coccfg.vim
endif
