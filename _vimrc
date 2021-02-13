
" Basic settings:

set number
set noruler
set foldmethod=syntax
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set backspace=indent,eol,start

" NOTE 'echo %OS%' works for native VIM for Windows, 'uname -r' on WSL
if system('echo %OS%') =~ "Windows" || system('uname -r') =~ "microsoft"
    augroup Yank
        autocmd!
        autocmd TextYankPost * :call system('clip.exe ',@")
    augroup END
endif

nnoremap <F2> :r !cat<CR>

if system('echo %OS%') =~ "Windows" 
    " Needed for coc.nvim
    let g:coc_node_path = 'C:\Program Files\nodejs\node.exe'
endif

" Vim-Plug:

call plug#begin('~/vimFiles/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pprovost/vim-ps1'
Plug 'tomasiser/vim-code-dark'

call plug#end()

set t_Co=256
set t_ut=
colorscheme codedark

