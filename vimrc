" vim
" ---

"  set

	set number
	set relativenumber
	set ruler
	set autowrite

"	set tabstop=2
"	set shiftwidth=2

	set list
	set listchars=tab:\|\ ,trail:$,extends:>,precedes:<
	set cursorline
"	set cursorcolumn
	set incsearch
	set tags=./tags

" Vundle
" ------
	set nocompatible
	filetype off

	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

		Plugin 'VundleVim/Vundle.vim'
		Plugin 'tpope/vim-fugitive'
		Plugin 't9md/vim-quickhl'
		Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
		Plugin 'morhetz/gruvbox'
		Plugin 'taglist.vim'
		Plugin 'airblade/vim-gitgutter'

	call vundle#end()
	filetype plugin indent on

" gruvbox
" -------
	let g:gruvbox_italic=1
	colorscheme gruvbox
	set background=dark

" taglist
" -------
	nmap  <tab> :TlistToggle<CR>

" vim-quikhl
" ----------
	nmap <Space>m <Plug>(quickhl-manual-this)
	xmap <Space>m <Plug>(quickhl-manual-this)
