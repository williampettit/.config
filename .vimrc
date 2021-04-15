set encoding=utf-8

colorscheme default



let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set nobackup
set nowritebackup
set cmdheight=2
set updatetime=0
syntax on
set number
set ruler
set cursorline
set mouse=a
set confirm
set hidden
set history=500
set list
set autoindent
set expandtab
set shiftround
set shiftwidth=2
"set smarttab
set tabstop=2
set scrolloff=5
set sidescrolloff=10
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap nb :bn<CR>
nnoremap mb :bd<CR>

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-buftabline'
call plug#end()

hi Pmenu ctermbg=black ctermfg=white
