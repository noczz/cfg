" SET
" ---
	set number
	set relativenumber
	set ruler
	set autowrite
	set showcmd

	"set tabstop=2
	"set shiftwidth=2

	set list
	set listchars=tab:\|\ ,trail:$,extends:>,precedes:<
	set cursorline
	"set cursorcolumn
	set incsearch
	set termwinsize=10x0	" {row}x{column}
	"set nowrap		" To display long lines as just one line

	":silent !ctags -R /usr/src/linux-headers-6.2.0-26-generic .
	set tags=./tags

" MAP
" ---
	nmap <C-K> 5<C-W>+<CR>
	nmap <C-J> 5<C-W>-<CR>
	nmap <C-H> 5<C-W><<CR>
	nmap <C-L> 5<C-W>><CR>

	nmap <F2>           :NERDTreeToggle<CR>
	nmap <F3>           :TagbarToggle<CR>
	nmap <TAB>          :set hls<CR>
	nnoremap <TAB><TAB> :set nohls<CR>
	nmap <F4>           :bo ter<CR>
	nmap <F5>           :bufdo so ~/.vimrc<CR>

	imap `in #include <ESC>a
	imap `pr printf(""<ESC>A);<ESC>2hi
	imap `re return;<ESC>i

" Vundle
" ------
	set nocompatible
	filetype off

	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

		Plugin 'VundleVim/Vundle.vim'
		Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
		Plugin 'tpope/vim-fugitive'
		Plugin 'airblade/vim-gitgutter'
		Plugin 'morhetz/gruvbox'
		"Plugin 'yuttie/comfortable-motion.vim'
		Plugin 'scrooloose/nerdtree'
		Plugin 'majutsushi/tagbar'

	call vundle#end()
	filetype plugin indent on

" gruvbox
" -------
	"let g:gruvbox_italic=0
	colorscheme gruvbox
	set background=dark
	hi Normal guibg=NONE ctermbg=NONE

" comfortable-motion
	"let g:comfortable_motion_interval = 1.0
	"let g:comfortable_motion_friction = 80.0
	"let g:comfortable_motion_air_drag = 2.0
