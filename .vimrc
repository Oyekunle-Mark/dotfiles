" Don't try to be vi compatible
set nocompatible

" Turn on syntax highlighting
syntax on

set number
set shiftwidth=4
set tabstop=4

" Save undo history to a file
set undofile

set autoindent
filetype plugin indent on

" Setup undo and backup folder so they don't litter workspaces
set undodir=~/.vim/.undo/
set backupdir=~/.vim/.backup/
set directory=~/.vim/.swp

" Turn off case sensitivity and turn smartcase on when searching
set ignorecase
set smartcase

" Hightlight matching braces
set showmatch

" Search for literal text
nnoremap / /\v
vnoremap / /\v

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Fast terminal connection.  More characters will be sent to the screen for redrawing
set ttyfast

" Show mode and command in last line
set showmode
set showcmd

" Blink cursor on error instead of beeping (grr)
set visualbell

" Set comma to the leader key
let mapleader = ","

" Automatically insert matching {,(,[," and '
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha

" Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Remap arrow keys to resize window
nnoremap <Up>    :resize -2<CR>
nnoremap <Down>  :resize +2<CR>
nnoremap <Left>  :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

" Auto completion suggestions for file names
set wildmode=longest:full,full

" paste code ummodified
" I don't comprehend what the script below does myself, but stackoverflow
" seems to think it should work the trick
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
" end of script
