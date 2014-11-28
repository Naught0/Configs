" Fix Colors
syntax on
set background=dark
set ai
colorscheme slate
set t_Co=16

" Center Cursor
set scrolloff=100

" Tabs
set expandtab
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Line numbers
set number
set numberwidth=2
highlight LineNr ctermfg=DarkGrey ctermbg=NONE

" Undo History
set undofile
set hidden
set undodir=/home/james/.vimcache/

" Enable Mouse
set mouse=a

" Keybinds
imap <C-BS> <C-W>
