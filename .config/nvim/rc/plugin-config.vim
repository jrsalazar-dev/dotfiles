" -----------------------------------------------------------------------------
" Plugin config
" -----------------------------------------------------------------------------

" Gitgutter
let g:gitgutter_max_signs = 10000

" Airline
let g:airline#extensions#tabline#enabled = 1

" Startify
let g:startify_list_order = [
\ ['Recent files in this directory'],
\ 'dir',
\ ['Recent files'],
\ 'files',
\ 'bookmarks',
\ 'sessions']
let g:startify_custom_indices = [
            \ '1', '2', '3', '4',
            \ 'Q', 'W', 'E', 'R',
            \ 'A', 'S', 'D', 'F',
            \ '5', '6', '7', '8']
autocmd VimEnter *
                \   if !argc()
                \ |   Startify
                \ |   NERDTree
                \ |   wincmd w
                \ | endif

" Nerd Tree
let g:NERDTreeWinSize = 32
let NERDTreeShowHidden = 1

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCustomDelimiters = { 'vue': { 'left': '//', 'leftAlt': '<!--', 'rightAlt': '-->' } }

" floaterm
let g:floaterm_height=0.5
let g:floaterm_width=1.0
let g:floaterm_wintype='float'
let g:floaterm_position='bottom'
let g:floaterm_autoclose=0
let g:floaterm_title=''

" test
let test#strategy = 'floaterm'

" Vim jsx pretty
" let g:vim_jsx_pretty_colorful_config = 1

" Php doc generator
let g:pdv_template_dir = '/Users/jrs/.config/nvim/Plug/pdv/templates_snip'

" let g:prettier#quickfix_enabled = 0

" Vim tmux navigator
let g:tmux_navigator_no_mappings = 1

let $FZF_DEFAULT_COMMAND = 'rg --glob="!.git/*" --hidden -l ""'
let g:fzf_layout = { 'window': { 'width': 0.5, 'height': 0.95, 'yoffset': 0, 'xoffset': 0.5 } }
let g:fzf_history_dir = '~/.local/share/nvim/fzf_history'
let g:fzf_preview_window = ['down:50%', 'ctrl-s']
let g:fzf_buffers_jump = 1
" let g:fzf_command_prefix='Fzf'

nnoremap <silent> ˙ :TmuxNavigateLeft<cr>
nnoremap <silent> ∆ :TmuxNavigateDown<cr>
nnoremap <silent> ˚ :TmuxNavigateUp<cr>
nnoremap <silent> ¬ :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" Indent guides
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_auto_colors = 0
" let g:indent_guides_start_level = 3
" let g:indent_guides_guide_size = 1

" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=black

let g:jsdoc_lehre_path = '/Users/jordansalazar/.node_modules/bin/lehre'

" let g:typescrip_indent_disable = 1

let g:polyglot_disabled = ['jsx', 'typescript']
let g:vim_jsx_pretty_template_tags = ['html', 'jsx']

let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'

" let g:fzf_preview_preview_bat_theme = 'Monokai Extended'
" let g:fzf_preview_use_dev_icons = 1
" let g:fzf_preview_fzf_color_option = 'fg:#bbccdd,fg+:#ddeeff,bg:#334455,preview-bg:#223344,border:#778899'

let g:clang_format#code_style = 'mozilla'
" let g:clang_format#style_options = { 'Standard': 'C++17' }

let g:fern#renderer = "nerdfont"
