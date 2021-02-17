" :map to see all key mapping
" <D- > stand for apple command key





"----------Disable arrow key-----------"
"replace arrow and Backspace, Delete with echo

nnoremap <Left>       :echo "No left for you!🤔"<CR>
vnoremap <Left> :<C-u> echo "No left for you!🤔"<CR>
inoremap <Left> <C-c>: echo "No left for you!🤔"<CR>a

nnoremap <Right> :echo "No Right for you!🤔"<CR>
vnoremap <Right> :<C-u>echo "No Right for you!🤔"<CR>
inoremap <Right> <C-c>:echo "No Right for you!🤔"<CR>a

nnoremap <Up> :echo "No Up for you!🤔"<CR>
vnoremap <Up> :<C-u>echo "No Up for you!🤔"<CR>
inoremap <Up> <C-c>:echo "No Up for you!🤔"<CR>a

nnoremap <Down> :echo "No Down for you!🤔"<CR>
vnoremap <Down> :<C-u>echo "No Down for you!🤔"<CR>
inoremap <Down> <C-c>:echo "No Down for you!🤔"<CR>a

nnoremap <BS> :echo "No BackSpace for you!🤔"<CR>
vnoremap <BS> :<C-u>echo "No BackSpace for you!🤔"<CR>
inoremap <BS> <C-c>:echo "No BackSpace for you!🤔"<CR>a

nnoremap <Del> :echo "No Delete for you!🤔"<CR>
vnoremap <Del> :<C-u>echo "No Delete for you!🤔"<CR>
inoremap <Del> <C-c>:echo "No Delete for you!🤔"<CR>a

"-------------leader mapping-----------"
"leader is space
    let mapleader = "\<Space>"
    xnoremap <leader>a xi{<Esc>po}<Esc>viB>kI<#Block#> <C-o>0

" insert ESC key swap with ctrl c
 inoremap <ESC> <C-C>
 inoremap <C-C> <ESC>
 inoremap <C-R><C-R> <C-R>*

 " j -> gj, for lines too long and jump made easy
nnoremap j gj
nnoremap k gk

"https://vi.stackexchange.com/a/22519
" Insert char at cursor position
nnoremap <C-i> i <ESC>r
" Append char after cursor position
nnoremap <C-a> a <ESC>r
