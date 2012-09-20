
filetype off
filetype plugin indent on

set nocompatible

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber

set backupdir=~/.vim/backup
set directory=~/.vim/backup

" load pathogen
source ~/.vim/bundle/pathogen/autoload/pathogen.vim

" pathogen plugin, requires filetype plugin indent
filetype plugin indent on
call pathogen#infect()
" required to get help on stuff installed through pathogen
call pathogen#helptags()

" configure FuzzyFinder mappings
let g:fuf_modesDisable=[]
noremap <silent><Leader>nn :FufRenewCache<CR>
noremap <silent><Leader>nf :FufFileWithCurrentBufferDir<CR>
noremap <silent><Leader>nd :FufDir<CR>
noremap <silent><Leader>nt :FufCoverageFile<CR>
noremap <silent><Leader>nb :FufBuffer<CR>
noremap <silent><Leader>ne :FufMruFile<CR>
noremap <silent><Leader>nc :FufMruCmd<CR>
noremap <silent><Leader>ng :FufLine<CR>
" open the latest search in :Fufline
noremap <silent><leader>/ :execute ':FufLine ' . substitute(substitute(substitute(@/, "\\\\<", "", ""), "\\\\>", "", "")," "\\\\v", "", "")<CR>

" display statusline on every window
set laststatus=2
" set powerline plugin to use fancy symbols
let g:Powerline_symbols = 'fancy'

" set VIM decrypt/encrypt pgp files on the fly, see :
" http://www.tolaris.com/2010/09/27/editing-gpg-encrypted-files-in-vim/
" http://www.vim.org/scripts/script.php?script_id=3645
let g:GPGPreferArmor=1
let g:GPGDefaultRecipients=["paul.gregory@free.fr"]

" Change fuzzyFinder menu colors
highlight PmenuSel ctermbg=11 guibg=Yellow
highlight Pmenu    ctermbg=7 guibg=Grey
