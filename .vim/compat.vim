"- - - - - - - - - - "
" Preloaded settings "
"- - - - - - - - - - "

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
"     if $TERM == 'xterm-256color'
"     	set t_Co=256
"     endif

" Messing around with 256-color terminal settings got me here. Looks
" nicer on most color schemes.
" let g:rehash256=1

" If you got st installed (which is the prefered choice) then just leave
" this line enabled
set termguicolors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Windows compatibility block
" Because sometimes you have to do things the hard way
"
" Find your .vimrc by running :echo $MYVIMRC
" Put your .vim folder contents in C:\Users\<username>\vimfiles\

" If you're using gVim
if has('gui_running')
	set guifont=Terminess_Powerline:h12:cANSI:qDRAFT
	"set guifont=Space_Mono_for_Powerline:h10:cANSI:qDRAFT
	set encoding=utf-8
	set fileencoding=utf-8
	set hlsearch
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Other compatibility and version checks
"
" Most of these came with Vim itself. They're probably worth keeping.
if has("vms")
	set nobackup		" do not keep a backup file, use versions instead
else
	set backup			" keep a backup file (restore to previous version)
	if has('persistent_undo')
		set undofile	" keep an undo file (undo changes after closing)
	endif
endif

if &t_Co > 2
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
