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




"split view `:new`/`:vnew` at 👇/👉
    set splitbelow splitright




"-----------Text color
syntax on

" code behavior, auto indent
    filetype on
    filetype indent on
    filetype plugin on




"---------------insert mode

"---------------Line-------------------"


"---------------plugin-----------------"
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/brglng/vim-im-select.git'
let g:im_select_default='com.apple.keylayout.Dvorak'
call plug#end()


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

