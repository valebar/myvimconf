set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

syntax enable


"-------------General Settings--------------"
set backspace=indent,eol,start                                          "Make backspace behave like every other editor.
let mapleader = ',' 						    	"The default leader is \, but a comma is much better.
set number								"Let's activate line numbers.
set noerrorbells visualbell t_vb=					"No damn bell.

"-------------Visuals--------------"
colorscheme atom-dark
set guifont=Fira\ Code
set linespace=15   						        "Macvim-specific line-height.
let g:gtk_nocache=[0x00000000, 0xfc00ffff, 0xf8000001, 0x78000001]



"-------------Search--------------"
set hlsearch
set incsearch





"-------------Split Management--------------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>





"-------------Mappings--------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>es :e ~/.vim/sippets/

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle. [CTRL-p]
nmap <Leader>p :NERDTreeToggle<cr>



"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
