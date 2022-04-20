
let g:nvim_tree_special_files = {}

hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
hi LineNr ctermfg=NONE ctermbg=NONE guibg=NONE
hi Folded ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

let $FZF_DEFAULT_COMMAND = 'rg --glob="!.git/*" --hidden -l ""'

let g:fzf_history_dir = '~/.local/share/nvim/fzf_history'
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_buffers_jump = 1

let test#strategy = 'floaterm'
let g:floaterm_height=0.5
let g:floaterm_width=1.0
let g:floaterm_wintype='float'
let g:floaterm_position='bottom'
let g:floaterm_autoclose=0
let g:floaterm_title=''

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1
let g:prettier#quickfix_auto_focus = 0
let g:prettier#quickfix_enabled = 0
