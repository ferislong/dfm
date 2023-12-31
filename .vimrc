""""""""""""""""""""""""""""""""""""""
" VIM - Vi IMproved
"  Author: ferrislong1 AT gmail DOT com
""""""""""""""""""""""""""""""""""""""

" start vim-plug
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
" Plug 'fatih/vim-go'

" Vim theme
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
" end vim-plug

"""""""""""""""""""""
" basic configure
"""""""""""""""""""""
colorscheme dracula
" set linebreak
filetype indent plugin on
set ruler
set autoindent
set encoding=utf-8
set expandtab
set hlsearch
set ignorecase
set incsearch
" set list
" set listchars=tab:»■,trail:■
set nobackup
set noswapfile
set number
" set relativenumber
set shiftwidth=2
set showcmd
set showmatch
set showmode
set smartcase
set softtabstop=2
set t_Co=256
set tabstop=2
set textwidth=120
set wildmenu
set wildmode=longest:list,full
set wrap
set cursorline
syntax on

" basic mappings
let mapleader = ","

"""""""""""""""""""""
" plugin configure
"""""""""""""""""""""

" NERDTree
" For toggling
noremap <Leader>e :NERDTreeToggle<cr>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter = if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" FZF
let g:fzf_command_prefix = 'Fzf'
nnoremap <C-p> :FzfFiles<CR>
" nnoremap <C-S-f> :FzfAg<CR>
