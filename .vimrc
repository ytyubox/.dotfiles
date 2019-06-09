"-------------GUI setting--------------"
set guifont=Menlo\ Regular:h15
"-------------Search-------------------"
set hlsearch
set incsearch

"----------Disable arrow key-----------"

nnoremap <Left>       :echo "No left for you!🤔"<CR>
vnoremap <Left> :<C-u> echo "No left for you!🤔"<CR>
inoremap <Left> <C-o>: echo "No left for you!🤔"<CR>

nnoremap <Right> :echo "No Right for you!🤔"<CR>
vnoremap <Right> :<C-u>echo "No Right for you!🤔"<CR>
inoremap <Right> <C-o>:echo "No Right for you!🤔"<CR>

nnoremap <Up> :echo "No Up for you!🤔"<CR>
vnoremap <Up> :<C-u>echo "No Up for you!🤔"<CR>
inoremap <Up> <C-o>:echo "No Up for you!🤔"<CR>

nnoremap <BS> :echo "No BackSpace for you!🤔"<CR>
vnoremap <BS> :<C-u>echo "No BackSpace for you!🤔"<CR>
inoremap <BS> <C-o>:echo "No BackSpace for you!🤔"<CR>

nnoremap <Del> :echo "No Delete for you!🤔"<CR>
vnoremap <Del> :<C-u>echo "No Delete for you!🤔"<CR>
inoremap <Del> <C-o>:echo "No Delete for you!🤔"<CR>



"---------------Line-------------------"
set number relativenumber


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
