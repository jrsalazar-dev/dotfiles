" -----------------------------------------------------------------------------
" Key mapping
" -----------------------------------------------------------------------------
let mapleader = ','

" broken comma
" let mapleader = '/'

set pastetoggle=<leader>p

nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

nnoremap <leader>h :noh<cr>
nnoremap <leader>n :NERDTreeTabsToggle<CR>
inoremap <leader>; <C-o>A;
nnoremap <leader>; A;<Esc>o
nnoremap <leader>q <Esc>:q<CR>
nnoremap <leader>w <Esc>:wq<CR>
nnoremap <leader>s <Esc>:w<CR>
inoremap <leader>[ <Esc>A<space>{}<left><CR><Esc>O
nnoremap <Space> /

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-p> :FZF<CR>

nnoremap P "0p

nnoremap <tab> > <space>
nnoremap <S-tab> < <space>

nnoremap + :exe "vertical resize +10"<CR>
nnoremap - :exe "vertical resize -10"<CR>

vnoremap <tab> > 
vnoremap <S-tab> < 

inoremap <tab> <Esc> `^

cmap w!! w !sudo tee % >/dev/null
cmap vt vsp term://zsh

imap ii <Esc>

" Plugin mappings
nmap <leader>b ;Bufstop<CR>
nmap <leader>a ;BufstopFast<CR>
nnoremap <leader>b ;BufstopModeFast<CR>

let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

let g:fzf_command_prefix='fzf'

nnoremap <C-o> :call pdv#DocumentWithSnip()<CR>
nnoremap ø :exe "JsDoc"<CR>

nnoremap <C-e> <C-y><leader>
inoremap <C-e> <C-y><leader>
