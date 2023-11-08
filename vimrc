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
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    Plug 'itchyny/lightline.vim'

    " quickrun code
    Plug 'thinca/vim-quickrun'

    " Zoom in like tmux
    Plug 'dhruvasagar/vim-zoom'

    " colorschemes
    Plug 'altercation/vim-colors-solarized'
    Plug 'morhetz/gruvbox'
    Plug 'ayu-theme/ayu-vim'
    Plug 'arcticicestudio/nord-vim'

    " latex compiling
    Plug 'LaTeX-Box-Team/LaTeX-Box'

    " nerdtree
    Plug 'majutsushi/tagbar'
    Plug 'scrooloose/nerdtree'
    Plug 'xuyuanp/nerdtree-git-plugin'

    " vim start menu
    Plug 'mhinz/vim-startify'
    Plug 'tpope/vim-fugitive'

    " git stuff
    Plug 'airblade/vim-gitgutter'

    " style
    Plug 'junegunn/limelight.vim'

    " coding help
    Plug 'majutsushi/tagbar'
    Plug 'scrooloose/nerdcommenter'
    Plug 'w0rp/ale'
    Plug 'ludovicchabant/vim-gutentags'

    " go to file
    Plug 'justinmk/vim-gtfo'

    " fuzzy file
    Plug 'junegunn/fzf.vim'

    " tmux
    Plug 'christoomey/vim-tmux-navigator'

    " language
    Plug 'sheerun/vim-polyglot'

    " buffer
    Plug 'jlanzarotta/bufexplorer'

    " yank
    Plug 'machakann/vim-highlightedyank'

    " markdown
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'

    " distraction free writing
    Plug 'junegunn/goyo.vim'

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
set undodir=~/.vim/undo
set encoding=utf-8
set noshowmode

" let g:airline#extensions#tabline#enabled = 1
" " set termguicolors
" " let g:airline_theme='base16_nord'
" let g:airline#extensions#ale#enabled = 1
" let g:airline_powerline_fonts = 1

" nerdtree stuff
map <C-n> :NERDTreeToggle<CR>

" background
" let g:gruvbox_bold=1
" set background=dark
" colorscheme gruvbox
colorscheme nord

let g:lightline = {
            \ 'colorscheme': 'nord'}

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

" ALE settings
let g:ale_lint_on_text_changed = 'never'

" Latex-Box Settings
let g:LatexBox_latexmk_async = 0 " for asynchronous compilation

set textwidth=80

" tagbar stuff
nmap <F8> :TagbarToggle<CR>

set ttymouse=xterm2
set mouse=a

"set clipboard=unnamedplus
let g:bufExplorerSortBy='number'

" startify options
set viminfo='100,n$HOME/.vim/files/info/viminfo

" gutentag options
" https://old.reddit.com/r/vim/comments/d77t6j/guide_how_to_setup_ctags_with_gutentags_properly/
let g:gutentags_ctags_extra_tags = [
            \ '--tag-relative=yes',
            \ '--fields=+ailmnS']
let g:gutentags_modules = ['ctags']
let g:gutentags_ctags_exclude = [
            \ '*.git',
            \ 'build',
            \ 'tags']
let g:gutentags_cache_dir='~/.vim/ccache/'

" markdown functionality
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown setlocal spell spelllang=en_gb
