language messages zh_CN.utf-8

set go=
set guifont=Anonymous_Pro:h12

colorscheme molokai

set number
set cursorline

set nowrap

let NERDTreeWinPos=1
let NERDTreeIgnore=['__pycache__']

"" close pairs
inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

"" fix menu strings
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

cd d:\Codespace
