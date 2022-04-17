" -----------------------------------------------------------------------------
" General
" -----------------------------------------------------------------------------
syntax enable
set background=dark
" colorscheme monokai_pro
colorscheme dracula
" set guifont="Hack Nerd Font Mono Regular"
" colorscheme solarized8_high


filetype plugin indent on

" if exists('+colorcolumn')
"     set colorcolumn=80
" else
"     au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
" endif

set clipboard=unnamed
if has('unnamedplus')
    set clipboard=unnamedplus
endif

" hightlight javascript function params
"highlight javaScriptParams ctermfg=208

"autocmd BufWinEnter *.js match javaScriptParams /\vfunction\.*\zs\(\zs.+\ze\)/
"autocmd InsertEnter *.js match javaScriptParams /\vfunction\.*\zs\(\zs.+\ze\)/
"autocmd InsertLeave *.js match javaScriptParams /\vfunction\.*\zs\(\zs.+\ze\)/
"autocmd BufWinEnter *.js match javaScriptParams /\vfunction\.*\(\zs.+[^\)]*/
"autocmd InsertEnter *.js match javaScriptParams /\vfunction\.*\(\zs.+[^\)]*/
"autocmd InsertLeave *.js match javaScriptParams /\vfunction\.*\(\zs.+[^\)]*/
"autocmd BufWinLeave *.js call clearmatches()

" These are overwrited by plugins otherwise.. sigh
hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
hi LineNr ctermfg=NONE ctermbg=NONE guibg=NONE
hi Folded ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi DiffAdd ctermbg=NONE guibg=NONE guifg=ForestGreen
hi DiffChange ctermbg=NONE guibg=NONE guifg=DarkGoldenrod
hi DiffDelete ctermbg=NONE guibg=NONE guifg=VioletRed

" PopupMenu colors
hi Pmenu ctermfg=150 ctermbg=NONE cterm=NONE guifg=#ab9df2 guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#403e41 gui=NONE
" hi Pmenu ctermbg=NONE guibg=NONE ctermfg=blue guifg=blue
" PmenuSel	selected item  |hl-PmenuSel|
" PmenuSbar	scrollbar  |hl-PmenuSbar|
" PmenuThumb	thumb of the scrollbar  |hl-PmenuThumb|

" peitalin/vim-jsx-typescript colors
" hi tsxTag guifg=#8BE9FD
" hi tsxCloseTag guifg=#A9DC76
" hi htmlTagName guifg=#A9DC76
" hi xmlTagName guifg=#A9DC76
" hi xmlEndTag guifg=#A9DC76
hi tsxComponentName guifg=#8BE9FD
hi tsxCloseComponentName guifg=#8BE9FD
hi xmlTagName guifg=#8BE9FD
" hi tsxCloseComponentName guifg=#A9DC76
" hi tsxCloseComponentName guifg=#A9DC76
" hi clear tsxAttributeBraces
" hi clear tsxTypeBraces
" hi tsxAttributeBraces guifg=#FF6188
" hi tsxTypeBraces guifg=#FF6188
" hi tsxJsBlock guifg=#FF6188

" highlight def link tsxAttributeBraces Function
" highlight def link tsxTypeBraces Function
