"<Your Name Here>

" Setup stuff
" ===========

" Use vim rather than vi settings
set nocompatible

" Leader key
let mapleader=","       " leader is comma

" Plugins Setup
" =============
call plug#begin('~/.vim/plugged')

" File Manager
Plug 'scrooloose/nerdtree'

" Theme
Plug 'morhetz/gruvbox'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tmux airline
Plug 'edkolev/tmuxline.vim'

call plug#end()

" General Config
" ==============

"Set up your configuration here.  Some common options are below 
"as examples
syntax enable                   " enable syntax processing

" Spaces and Tabs
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

" UI Config
set number              " show line numbers
set cursorline          " highlight current line<Paste>
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight:
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" Move backups file to tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Custom keymappings
" ===============

" highlight last inserted text
nnoremap gV `[v`]

" jk is escape
inoremap jk <esc>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

" Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Splits navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Cancel search highlight
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" Color scheme
colorscheme gruvbox
set background=dark    " Setting dark mode

"Syntax Specific

" Mostly syntax specific stuff should go in ftplugin files, 
" but you can put some short autocommand ones here if you don't have many
