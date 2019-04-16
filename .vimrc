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
