" -----------------------------------------------------------------------------
" Plugin config
" -----------------------------------------------------------------------------

" Gitgutter
" let g:gitgutter_override_sign_column_highlight = 0

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
            \ '5', '6', '7', '8',
            \ 'A', 'S', 'D', 'F']
autocmd VimEnter *                                                          
                \   if !argc()                                                  
                \ |   Startify                                                  
                \ |   NERDTree                                                  
                \ |   wincmd w                                                  
                \ | endif   

" Nerd Tree
let g:NERDTreeWinSize = 26
let NERDTreeShowHidden = 1

" Neomake
hi NeoErrorMsg ctermfg=52
let g:neomake_error_sign = {'text': '✘', 'texthl': 'NeoErrorMsg'}

hi NeoWarningMsg ctermfg=94
let g:neomake_warning_sign = {'text': '❕', 'texthl': 'NeoWarningMsg'}

let g:neomake_javascript_enabled_makers = ['eslint', 'flow']
let g:neomake_php_enabled_makers = ['php', 'phpcs']
let g:neomake_html_enabled_makers = ['tidy']
let g:neomake_php_phpcs_args_standard = 'PSR2'


let g:neomake_verbose = 0
let g:neomake_logfile = '/tmp/error.log'
let g:neomake_open_list = 0
let g:jsx_ext_required = 0

" Php doc generator 
let g:pdv_template_dir = '/Users/jordansalazar/.vim/bundle/pdv/templates_snip'

"Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
