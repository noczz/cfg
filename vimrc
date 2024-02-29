" vim
" ---

"  set

	set number
	set relativenumber
	set ruler
	set autowrite
	set showcmd

"	set tabstop=2
"	set shiftwidth=2

	set list
	set listchars=tab:\|\ ,trail:$,extends:>,precedes:<
	set cursorline
"	set cursorcolumn
	set incsearch
	set tags=./tags

" kep map

	nmap <C-K> <C-W>+<CR>
	nmap <C-J> <C-W>-<CR>
	nmap <C-H> <C-W><<CR>
	nmap <C-L> <C-W>><CR>

	nmap <F2> :TagbarToggle<CR>
	nmap <F3> :NERDTreeToggle<CR>

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
	let g:gruvbox_italic=0
	colorscheme gruvbox
	set background=dark
