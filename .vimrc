syntax enable
colorscheme desert 			

set backspace=indent,eol,start		"make backspace behave like every editor.
let mapleader = ','			"the default leader is \, but a comma is much better.
set number				"Let's activate line number
set rnu
set linespace=15			"Macvim-specific line-height
set cursorline
set cursorcolumn






"-------------Search-------------------"
set hlsearch
set incsearch
"-------------Mappings-----------------"

"make it easy to edit the Vimrc file.
nmap <leader>ev :tabedit $MYVIMRC<cr>
"Add simple highlight removal.  
nmap <leader><space> :nohlsearch<cr>

"------------Auto-Commands-------------"
"Automatically source the vimrc file on safe.
augroup autosourcing
	autocmd! 
	autocmd BufWritePost .vimrc source %
augroup END
