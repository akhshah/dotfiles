set term=xterm-256color
set nocompatible
filetype plugin on
let mapleader = ","

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
set rtp+=/usr/local/opt/fzf

call plug#begin('~/.vim/plugged')
    " airline stuff
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " quickrun code
    Plug 'thinca/vim-quickrun'

    " colorschemes
    Plug 'altercation/vim-colors-solarized'
    Plug 'morhetz/gruvbox'

    " latex compiling
    Plug 'LaTeX-Box-Team/LaTeX-Box'

    " nerdtree
    Plug 'scrooloose/nerdtree'
    Plug 'xuyuanp/nerdtree-git-plugin'

    " vim start menu
    Plug 'mhinz/vim-startify'

    " git stuff
    Plug 'airblade/vim-gitgutter'

    " style
    Plug 'junegunn/limelight.vim'

    " coding help
    Plug 'majutsushi/tagbar'
    Plug 'scrooloose/nerdcommenter'
    Plug 'w0rp/ale'

    " go to file
    Plug 'justinmk/vim-gtfo'

    " fuzzy file
    Plug 'junegunn/fzf.vim'

    " tmux
    Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" get rid of all trailing whitespace in a file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

set backspace=indent,eol,start
syntax on
set number
set incsearch
set showmatch
set hlsearch
set ignorecase
set smartcase

set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set laststatus=2
set t_Co=256
set wildmenu
set wildmode=list:longest,full
set undofile
set encoding=utf-8
set noshowmode

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1

map <C-n> :NERDTreeToggle<CR>

let g:gruvbox_bold=1
set background=dark
colorscheme gruvbox

" For LaTeX Compilation
let g:LatexBox_viewer="open"
let g:tex_flavor='latex'

let g:limelight_conceal_ctermfg = 'gray'

" easier split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" NERD commenter settings
let g:NERDSpaceDelims = 1 " add space after comment symbol
let g:NERDCompactSexyComs = 1 " for those sexy comments
let g:NERDTrimTrailingWhitespace = 1 " to get rid of whitespace
