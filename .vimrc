"-------------ENV SETTING---------"
"讓 VIM 工作在「非相容模式」下：也就是不理會他的前身編輯器 vi，在「相容模式」中 VIM 將放棄這些新的功能， 儘量模仿 vi 的各種操作方式；只有在「非相容模式」下， 才能更好地發揮 VIM 自身的特點，所以除非 vi 用習慣，否則這行一定要設定。 VIM 許多操作與 vi 很相似， 但也有許多操作與 vi 是不一樣的。 如果使用「:set cp」命令打開了兼容模式開關的話， VIM 將儘可能模仿 vi 的操作模式。 例如：VIM 裡允許在 Insert 模式下使用方向鍵移動光標， 而 vi 裡在 Insert 模式下是不能移動光標的， 必須使用 ESC 退回到 Normal 模式下才行。 再舉一個例子， vi 裡命令模式下使用 u 命令可以撤消一次先前的操作， 再次按下 u 時， 將撤消「撤消」這個動作本身， 也就是我們常說的「重做」(redo)。 而 VIM 裡可以使用 u 命令撤消多步操作， 「Redo」使用的快捷鍵是 Ctrl + R。
set nocompatible
" will not generate swap
    set noswapfile

"share clipboard with system
    "set clipboard=unnamed

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

"----------input method----------------"
" function! ChangeIM()
"     silent !im-select com.apple.keylayout.Dvorak
" endfunction
"
" autocmd! InsertLeave *	call ChangeIM()

"---------------plugin-----------------"
" call plug#begin('~/.vim/plugged')
"
"     " im_select auto change IM on exit insert mode
"     Plug 'https://github.com/brglng/vim-im-select.git'
"     let g:im_select_default='com.apple.keylayout.Dvorak'

"     Plug 'godlygeek/tabular'
"     Plug 'plasticboy/vim-markdown'
"
"     Plug 'vim-airline/vim-airline'
"     let g:airline#extensions#tabline#enabled = 1

    " https://github.com/preservim/nerdtree
"     Plug 'preservim/nerdtree'
"     nnoremap <silent> <F2> :NERDTreeToggle<CR>
"     let NERDTreeMinimalUI=1
"     " Exit Vim if NERDTree is the only window left.
"     autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"     \ quit | endif
"     " Start NERDTree and put the cursor back in the other window.
"     autocmd VimEnter * NERDTree | wincmd p
"     let NERDTreeChDirMode = 2
"     let NERDTreeShowHidden = 1
    " m open NERDTree Menu

    " https://github.com/tpope/vim-surround
"     Plug 'tpope/vim-surround'
"     Plug 'tpope/vim-repeat'
"
"     "https://github.com/ctrlpvim/ctrlp.vim
"     Plug 'ctrlpvim/ctrlp.vim'
"     " add new ignore dir FT$|FT$
"     let g:ctrlp_custom_ignore = {
"       \ 'dir':  '\v[\/]\.(git|hg|svn)$|tmp$',
"       \ 'file': '\v\.(exe|so|dll)$',
"       \ 'link': 'some_bad_symbolic_links',
"       \ }
"
"
"     " Faster Grepping in Vim - thoughtbot https://thoughtbot.com/blog/faster-grepping-in-vim
"    " 快速找原始碼的好幫手：The Silver Searcher｜專欄文章｜五倍紅寶石 https://5xruby.tw/posts/technical-article-02/
"    if executable('ag')
"          set grepprg=ag\ --nogroup\ --nocolor
"            let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"              let g:ctrlp_use_caching = 0
"          endif
"
"
"    "https://github.com/tomtom/tcomment_vim
"    Plug 'https://github.com/tomtom/tcomment_vim'
"
"    "  https://github.com/garbas/vim-snipmate
"    Plug 'MarcWeber/vim-addon-mw-utils'
"    Plug 'tomtom/tlib_vim'
"    Plug 'garbas/vim-snipmate'
"    Plug 'honza/vim-snippets'
"
"    Plug 'https://github.com/preservim/tagbar'
"    noremap <F3> :TagbarToggle<Enter>
"
"
"    Plug 'https://github.com/mileszs/ack.vim'
"    if executable('ag')
"          let g:ackprg = 'ag --vimgrep'
"            noremap FF :Ack<Space>
"        else
"              noremap FF :echo "you need to install ack or ag first"<Enter>
"          endif
"    Plug 'prabirshrestha/vim-lsp'
"    " With this added in .vimrc, you can use <c-x><c-o> in insert mode to trigger sourcekit-lsp completion.
"    " https://github.com/apple/sourcekit-lsp/tree/main/Editors#vim-lsp
"    autocmd FileType swift setlocal omnifunc=lsp#complete
"    Plug 'https://github.com/keith/swift.vim'
"    Plug 'https://github.com/vim-syntastic/syntastic'
"    Plug 'neoclide/coc.nvim', {'branch': 'release'}
"
"call plug#end()
" https://github.com/junegunn/vim-plug
" using :PlugInstall to install new Plugin
" Command	Description
" PlugInstall [name ...] [#threads]	Install plugins
" PlugUpdate [name ...] [#threads]	Install or update plugins
" PlugClean[!]	Remove unlisted plugins (bang version will clean without prompt)
" PlugUpgrade	Upgrade vim-plug itself
" PlugStatus	Check the status of plugins
" PlugDiff	Examine changes from the previous update and the pending changes
" PlugSnapshot[!] [output path]	Generate script for restoring the current snapshot of the plugins

"-------------Mappings-----------------"

let mapleader=","
"make it easy to edit the Vimrc file.
nmap <leader>rc :tabedit $MYVIMRC<cr>G

"------------Auto-Commands-------------"

" 視窗切換時候顯示/隱藏游標底線
    autocmd WinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline

" 存檔時自動把行末多餘的空白刪除
    autocmd BufWritePre * :%s/\s\+$//e

" Opening Vim help in a vertical split window https://stackoverflow.com/a/21843502/10172299
    autocmd FileType help wincmd L

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

iabbrev ssig ytyubox@gmail.com
nnoremap H 0
nnoremap L $
inoremap jk <esc>
inoremap <esc> <nop>
inoremap <C-c> <nop>


"Automatically source the vimrc file on safe.
augroup autosourcing
autocmd!
autocmd BufWritePost .vimrc source %
augroup END

