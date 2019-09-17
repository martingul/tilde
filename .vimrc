filetype plugin indent on

" plugins
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
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

nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

nnoremap f :CtrlPBuffer<CR>
nnoremap F :CtrlP<CR>

" colors
syntax on
set background=dark
colorscheme default

hi LineNr ctermfg=0
hi CursorLineNr ctermfg=6
hi CursorLine cterm=NONE
hi ColorColumn ctermbg=232
hi MatchParen ctermfg=13 ctermbg=0
hi Search ctermbg=0

hi Normal ctermfg=15
hi Visual ctermbg=0
hi PreProc ctermfg=3
hi Statement ctermfg=11
hi Identifier ctermfg=13
hi Type ctermfg=11
hi Constant ctermfg=245
hi Comment ctermbg=233 ctermfg=8
hi Special ctermfg=2
hi Todo ctermbg=233 ctermfg=1

hi VertSplit cterm=NONE ctermbg=NONE ctermfg=0
hi StatusLine cterm=NONE ctermbg=233 ctermfg=15
hi StatusLineNC cterm=NONE ctermbg=232 ctermfg=6
hi ErrorMsg ctermfg=9 ctermbg=NONE
hi ModeMsg cterm=NONE ctermfg=11

" statusline
set laststatus=2
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
