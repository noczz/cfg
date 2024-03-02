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
	set tags=./tags
	set termwinsize=10x0	" {row}x{column}
	set nowrap		" To display long lines as just one line

" MAP
" ---
	nmap <C-K> <C-W>+<CR>
	nmap <C-J> <C-W>-<CR>
	nmap <C-H> <C-W><<CR>
	nmap <C-L> <C-W>><CR>

	nmap <F2>           :NERDTreeToggle<CR>
	nmap <F3>           :TagbarToggle<CR>
	nmap <TAB>          :set hls<CR>
	nnoremap <TAB><TAB> :set nohls<CR>
	nmap <F4>           :bo ter<CR>
	nmap <F5>           :bufdo so ~/.vimrc<CR>

	imap <> <><ESC>i
	imap () ()<ESC>i
	imap [] []<ESC>i
	imap {} {}<ESC>i
	inoremap '' ''<ESC>i
	inoremap "" ""<ESC>i
	nnoremap <SPACE>; A;<ESC>


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
		Plugin 'yuttie/comfortable-motion.vim'
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


" NOTE
" ----
"	[1]	When the cursor in terminal, press <C-W>N switch to edit mode
"		and press i switch to normal mode in termnial.

"	[2]	...
