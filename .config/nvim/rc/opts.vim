" -----------------------------------------------------------------------------
" Vim opts
" -----------------------------------------------------------------------------
set modelines=0
set encoding=utf8

" Enable true color ????24??
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set rtp+=/opt/homebrew/opt/fzf

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set colorcolumn=80

set scroll=15
set scrolloff=10
set sidescrolloff=10
set shiftround
set ignorecase
" set autoindent
" set smartindent
" set breakindent
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
set signcolumn=yes

set mouse=a

set completeopt=menuone,preview

" Enable blinking together with different cursor shapes for insert/command mode, and cursor highlighting:
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
      \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
      \,sm:block-blinkwait175-blinkoff150-blinkon175

" COC
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
" set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c


