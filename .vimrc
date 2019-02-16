" Daniel de Schiffart's vim startup script

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

" Detects XTerm and sets it to 256 colors. Necessary for color schemes.
" Stays forced until I can fix it for XTerm.
"if $TERM == "xterm-256color"
  set t_Co=256
"endif

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"- - - - - - - - - - - - - - - - - - - - - - - - - -
" vim-plug setup and plugin loading
" Get it off https://github.com/junegunn/vim-plug
" Install any new plugins by running :PlugInstall
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set the tab length to four spaces
set tabstop=4
set shiftwidth=4
set noexpandtab

" Set display numbers
set number
set relativenumber

" Set color scheme to Molokai
colorscheme molokai

" Use the external clipboard
set clipboard=unnamedplus

" Display control characters
set list
set listchars=tab:>·,

" FIletype-specific indentations
filetype indent on

" Less redraws
set lazyredraw

" YCM autocompletion minimum characters
"let g:ycm_min_num_of_chars_for_completion = 20
