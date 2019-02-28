" Daniel de Schiffart's vim startup script

"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Preloaded settings (or 'That part that I'm not touching yet')  "
"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" If XTerm is acting up, add these lines to your ~/.Xdefaults file.
"
"     *customization: -color
"     XTerm*termName: xterm-256color
"     XTerm*Background: black
"     XTerm*Foreground: white

" If XTerm is STILL acting up, add the same lines to your ~/.Xresources file 
" (create one if necessary) and run the following command in the terminal.
"
"     xrdb -merge ~/.Xresources
" 
" Replace '-merge' with '-remove' to undo.

" Detects XTerm and forces 256 colors. Use only if necessary.
" This segment was replaced by the lines above.
"
"     if $TERM == "xterm-256color"
"     	set t_Co=256
"     endif

" Messing around with 256-color terminal settings got me here. Looks
" nicer on most color schemes.
let g:rehash256=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("vms")
	set nobackup		" do not keep a backup file, use versions instead
else
	set backup		" keep a backup file (restore to previous version)
	if has('persistent_undo')
		set undofile	" keep an undo file (undo changes after closing)
	endif
endif

if &t_Co > 2 || has("gui_running")
	" Switch on highlighting the last used search pattern.
	set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")
	" Put these in an autocmd group, so that we can delete them easily.
	augroup vimrcEx
	au!

	" For all text files set 'textwidth' to 76 characters.
	autocmd FileType text setlocal textwidth=76
	augroup END
else
	" always set autoindenting on
	set autoindent
endif

"- - - - - - - - - - - - -
" Standard Vim settings  "
"- - - - - - - - - - - - -

" Set the tab length to four spaces
set tabstop=4
set shiftwidth=4
set noexpandtab

" Set display numbers
set number
set relativenumber

" Use the external clipboard
set clipboard=unnamedplus

" Display control characters
set list
set listchars=tab:>·,

" Stick indentations to 4-space multiples
set shiftround

" FIletype-specific indentations
filetype indent on

" Less redraws
set lazyredraw

" Set color scheme to Molokai
colorscheme molokayo

"- - - - - -
" Keybinds "
"- - - - - -

" Set leader key
let mapleader = '§'

" Drag lines up or down
nnoremap - ddp
nnoremap _ ddkP

" Change begin and end line characters
nnoremap L $
nnoremap H 0
nnoremap $ L
nnoremap 0 H
vnoremap L $
vnoremap H 0
vnoremap $ L
vnoremap 0 H
onoremap L $
onoremap H 0
onoremap $ L
onoremap 0 H

" Clone the current line downwards
nnoremap <c-j> yyp

" Tab navigation binds
nnoremap <leader>h :tabprevious<cr>
nnoremap <leader>l :tabnext<cr>
nnoremap <leader>k :tabfirst<cr>
nnoremap <leader>j :tablast<cr>


" Open .vimrc NOW
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Uppercase the current word
inoremap <c-u> <esc>bveUea

" Surround word by quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
vnoremap <leader><c-"> `><esc>la"<esc>`<i"<esc>lel

" Abbreviation for email
iabbrev @@ daniel.de.schiffart@gmail.com

" Typos for words I hate
iabbrev euqation equation

" Escape key alternative
inoremap jj <esc>

"- - - - - - - - - - - - - - - - - - - -
" Filetype-specific events and settings
"- - - - - - - - - - - - - - - - - - - -

autocmd BufNewFile,BufRead *.tex setlocal wrap

autocmd FileType tex nnoremap <buffer> <leader>c I%<esc>
autocmd FileType lua nnoremap <buffer> <leader>c I--<esc>

autocmd FileType tex iabbrev <buffer> \\\ \textbackslash

"- - - - - - - - - - - -
" Custom editor commands
"- - - - - - - - - - - -

command Svimrc split $MYVIMRC
command Vvimrc vsplit $MYVIMRC

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"- - - - - - - - - - - - - - - - - - - - - - - - - -
" vim-plug setup and plugin loading                "
" Get it off https://github.com/junegunn/vim-plug  "
" Install any new plugins by running :PlugInstall  "
"- - - - - - - - - - - - - - - - - - - - - - - - - -
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/vim-plug')

"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'junegunn/vim-plug'
Plug 'lervag/vimtex'
Plug 'vim-airline/vim-airline'

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"- - - - - - - - - -
" Plugin settings  "
"- - - - - - - - - -

" YCM autocompletion minimum characters
"let g:ycm_min_num_of_chars_for_completion = 20

"let g:molokai_original=1
