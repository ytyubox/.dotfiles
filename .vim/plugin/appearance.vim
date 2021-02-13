
set number relativenumber

"-------------GUI setting--------------"
set guifont=Menlo\ Regular:h15

"cursor setting
    set cursorline

"tab name always show, even there are only one tab
    set showtabline=2
"------------Word Wrap in Vim ---------"
"(preserving indentation)  https://stackoverflow.com/a/26578161/10172299
" Indents word-wrapped lines as much as the 'parent' line
    set breakindent
    set wrap

" Ensures word-wrap does not split words
    set formatoptions=l
    set lbr
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
