call pathogen#infect()
call pathogen#helptags()

syntax on
filetype on
filetype plugin on
filetype indent on
set number
set nocompatible

" Set xterm title
set title

set history=1000

runtime macros/matchit.vim
set wildmode=longest,list,full
set wildmenu
set clipboard=unnamed
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2

" '\' is too far away, how about '.'
let mapleader = "."

" non powerline status line jazz
"set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-13.(%l,%c%V%)\ %P
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

" powerline
set laststatus=2 " always show the status line
set encoding=utf-8
let g:Powerline_symbols = 'unicode'
let g:Powerline_stl_path_style = 'relative'

" syntastic
let g:syntastic_auto_jump=1

" Fuffbuff stuff 
map <leader>t :FufFileWithCurrentBufferDir<CR>
map <leader>d :FufDirWithCurrentBuffer<CR>
map <leader>ff :FufBookmarkFile<CR>
map <leader>fr :FufRenewCache<CR>
map <leader>j :FufBuffer<cr>"

" Ack searching
map <leader>ac :Ack!<space>
map <C-T> :Ack! TODO <CR>
map <D-F> :Ack!<space>
map <D-D> :Bsgrep<space>
map <leader>bg :Bsgrep<space>
map <D-L> :Bstoc<CR>
let g:ackhighlight=1

" easy window switchin'
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Show them invisibles 
set list
map <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

"pretty colors
colorscheme twilight256

" grey out background after 80 columns
set textwidth=80
let &colorcolumn=join(range(81,300),",")

"Auto-backup files and .swp files don't go to pwd
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp"
