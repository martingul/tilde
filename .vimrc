filetype plugin indent on

" plugins
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'arcticicestudio/nord-vim'
call plug#end()

set encoding=utf-8
set fileencoding=utf-8

set ts=4 sw=4 ai
set cc=80 number cursorline hlsearch
set splitbelow splitright

" mappings
let mapleader = ","

command Bd bp\|bd \#
nnoremap <leader>1 :bp<CR>
nnoremap <leader>2 :bn<CR>
nnoremap <leader>d :Bd<CR>
nnoremap <leader>D :bd<CR>
nnoremap <leader>n :set number!<CR>

nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

nnoremap <leader>f :CtrlPBuffer<CR>
nnoremap <leader>F :CtrlP<CR>

" colors
syntax on
colorscheme nord

hi LineNr ctermfg=0
hi CursorLine ctermbg=NONE
hi ColorColumn ctermbg=232
hi MatchParen ctermbg=233 ctermfg=5
hi Search ctermbg=NONE ctermfg=3
hi VertSplit cterm=NONE ctermbg=NONE ctermfg=0

hi WarningMsg ctermbg=NONE ctermfg=3
hi ErrorMsg ctermbg=NONE ctermfg=1
hi Error cterm=underline ctermbg=NONE ctermfg=1

hi Visual ctermbg=235
hi Comment ctermbg=233 ctermfg=8
hi Special ctermfg=2
hi Todo ctermbg=233 ctermfg=1

" statusline
set laststatus=0

set statusline=
set statusline+=<%n> " buffer number
set statusline+=\ %<%F " full path
set statusline+=\ %m " modified flag
set statusline+=%= " jump to right
set statusline+=%y " file type
set statusline+=\ %l:%v/%L " current line:column/total lines

" backup and swap
set backup
set backupdir=~/.tmp/vim/backup
set directory=~/.tmp/vim/swap
