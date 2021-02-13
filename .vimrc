"-------------ENV SETTING---------"
"讓 VIM 工作在「非相容模式」下：也就是不理會他的前身編輯器 vi，在「相容模式」中 VIM 將放棄這些新的功能， 儘量模仿 vi 的各種操作方式；只有在「非相容模式」下， 才能更好地發揮 VIM 自身的特點，所以除非 vi 用習慣，否則這行一定要設定。 VIM 許多操作與 vi 很相似， 但也有許多操作與 vi 是不一樣的。 如果使用「:set cp」命令打開了兼容模式開關的話， VIM 將儘可能模仿 vi 的操作模式。 例如：VIM 裡允許在 Insert 模式下使用方向鍵移動光標， 而 vi 裡在 Insert 模式下是不能移動光標的， 必須使用 ESC 退回到 Normal 模式下才行。 再舉一個例子， vi 裡命令模式下使用 u 命令可以撤消一次先前的操作， 再次按下 u 時， 將撤消「撤消」這個動作本身， 也就是我們常說的「重做」(redo)。 而 VIM 裡可以使用 u 命令撤消多步操作， 「Redo」使用的快捷鍵是 Ctrl + R。
set nocompatible
" will not generate swap
    set noswapfile

"share clipboard with system
    set clipboard=unnamed

"set indent as 4 space in insert/normal `<<` mode
    set softtabstop=4 shiftwidth=4

"repalce \t into spaces by :retab
    set expandtab

"text syntax


"-------------leader mapping-----------"
"leader is space
    let mapleader = "\<Space>"
    xnoremap <leader>a xi{<Esc>po}<Esc>viB>kI<#Block#> <C-o>0

"-------------GUI setting--------------"
set guifont=Menlo\ Regular:h15

"cursor setting
    set cursorline

"tab name always show, even there are only one tab
    set showtabline=2

"split view `:new`/`:vnew` at 👇/👉
    set splitbelow splitright

"GUI
"show cursor x, y at bottom line
    set ruler
"show bottom bar mode, command
    set showmode showcmd
"make scroll happen before 3 line ahead
    set scrolloff=3
    set nolist
    try
      colorscheme darkblue
    catch
    endtry

"------------Word Wrap in Vim ---------"
"(preserving indentation)  https://stackoverflow.com/a/26578161/10172299
" Indents word-wrapped lines as much as the 'parent' line
    set breakindent
    set wrap

" Ensures word-wrap does not split words
    set formatoptions=l
    set lbr

"-------------Search-------------------"

"highlight current search key
    set hlsearch
"Add simple highlight removal.
    nmap <leader><space> :nohlsearch<cr>

"search ignore alphabet case
    set ignorecase smartcase

"live result while type search key
    set incsearch

"-----------Text color
syntax on

" code behavior, auto indent
    filetype on
    filetype indent on
    filetype plugin on


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


"---------------insert mode

"---------------Line-------------------"
set number relativenumber


"---------------plugin-----------------"


"-------------Mappings-----------------"

"make it easy to edit the Vimrc file.
nmap <leader>ev :tabedit $MYVIMRC<cr>

"------------Auto-Commands-------------"

" 視窗切換時候顯示/隱藏游標底線
    autocmd WinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline

" 存檔時自動把行末多餘的空白刪除
    autocmd BufWritePre * :%s/\s\+$//e

" 按下 F5 執行程式
    if executable("ruby")
        autocmd BufRead,BufNewFile *.rb noremap <F5> :% w !ruby -w<Enter>
    else
        autocmd BufRead,BufNewFile *.rb noremap <F5> :echo "you need to install Ruby first!"
    endif
    if executable("node")
        autocmd BufRead,BufNewFile *.js noremap <F5> :% w !node<Enter>
    else
        autocmd BufRead,BufNewFile *.rb noremap <F5> :echo "you need to install Node.js first!"
    endif

"Automatically source the vimrc file on safe.
augroup autosourcing
autocmd!
autocmd BufWritePost .vimrc source %
augroup END

