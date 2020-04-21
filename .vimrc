" Daniel de Schiffart's vim startup script

" Vim configuration files can be found at github.com/ekspek/dotfiles.
" Check README.md for extra information.

"- - - - - - - - - - "
" Preloaded settings "
"- - - - - - - - - - "
source ~/.vim/compat.vim

"- - - - - - - - - - - - "
" Standard Vim settings  "
"- - - - - - - - - - - - "

" Set the tab length to four spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Set display numbers
set number
set relativenumber

" Use the external clipboard
set clipboard=unnamedplus

" Display control characters
set nolist
"set listchars=tab:>·,
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»

" Stick indentations to 4-space multiples
set shiftround

" FIletype-specific indentations
filetype indent on

" Vim native autocomplete
filetype plugin on
syntax on
"set omnifunc=syntaxcomplete#Complete

" Less redraws
set lazyredraw

" Set netrw preferences
let g:netrw_liststyle=3
let g:netrw_winsize=20

" Reload changed files automatically
set autoread

" Search case sensitivity options
set ignorecase
set smartcase

" Set Vim backup file locations
set backupdir=~/.vim/tmp//,.
set directory=~/.vim/tmp//,.

" Leave folds open on startup
set foldlevel=99

" Split settings
set splitbelow
set splitright

"- - - - - "
" Mappings "
"- - - - - "
source ~/.vim/mappings.vim

"- - - - - - - - - "
" Plugin settings  "
"- - - - - - - - - "
if filereadable("/root/.vim/plugins.vim")
	source ~/.vim/plugins.vim
endif
