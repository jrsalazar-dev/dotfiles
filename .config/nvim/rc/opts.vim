" -----------------------------------------------------------------------------
" Vim opts
" -----------------------------------------------------------------------------
set modelines=0
set encoding=utf8

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set scroll=15
set scrolloff=20
set sidescrolloff=20
set shiftround
set ignorecase
set autoindent
set smartindent
set breakindent
set showmode
set showcmd
set hidden
set wildmode=list:longest
set winminheight=0          " Allow window split borders to touch.
set visualbell
set ruler
set laststatus=2
set relativenumber
set number
set splitbelow
set splitright
set foldmethod=indent
set foldlevel=20
set foldlevelstart=20
set cursorline
set linebreak

"let autoreadargs={'autoread':1} 
"execute WatchForChanges("*",autoreadargs) 

set noswapfile
set dir=~/.config/nvim/tmp
set backup
set backupdir=~/.config/nvim/tmp
set directory=~/.config/nvim/tmp
set writebackup

set undofile
set undodir=$HOME/.config/nvim/undo
set undolevels=1000
set undoreload=10000

set showmatch
set gdefault

set mouse=a
