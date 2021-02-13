
"----------Disable arrow key-----------"
"replace arrow and Backspace, Delete with echo

nnoremap <Left>       :echo "No left for you!🤔"<CR>
vnoremap <Left> :<C-u> echo "No left for you!🤔"<CR>
inoremap <Left> <C-o>: echo "No left for you!🤔"<CR>

nnoremap <Right> :echo "No Right for you!🤔"<CR>
vnoremap <Right> :<C-u>echo "No Right for you!🤔"<CR>
inoremap <Right> <C-o>:echo "No Right for you!🤔"<CR>

nnoremap <Up> :echo "No Up for you!🤔"<CR>
vnoremap <Up> :<C-u>echo "No Up for you!🤔"<CR>
inoremap <Up> <C-o>:echo "No Up for you!🤔"<CR>

nnoremap <Down> :echo "No Down for you!🤔"<CR>
vnoremap <Down> :<C-u>echo "No Down for you!🤔"<CR>
inoremap <Down> <C-o>:echo "No Down for you!🤔"<CR>

nnoremap <BS> :echo "No BackSpace for you!🤔"<CR>
vnoremap <BS> :<C-u>echo "No BackSpace for you!🤔"<CR>
inoremap <BS> <C-o>:echo "No BackSpace for you!🤔"<CR>

nnoremap <Del> :echo "No Delete for you!🤔"<CR>
vnoremap <Del> :<C-u>echo "No Delete for you!🤔"<CR>
inoremap <Del> <C-o>:echo "No Delete for you!🤔"<CR>

"-------------leader mapping-----------"
"leader is space
    let mapleader = "\<Space>"
    xnoremap <leader>a xi{<Esc>po}<Esc>viB>kI<#Block#> <C-o>0
