" -----------------------------------------------------------------------------
" Filtype 
" -----------------------------------------------------------------------------
autocmd BufNewfile,BufRead *.blade.php set syntax=blade ft=blade
autocmd FileType blade set autoindent smartindent 
autocmd FileType html,css,blade.php EmmetInstall

autocmd FileType css,scss,sass setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

autocmd FileType php set smartindent

autocmd! BufWritePost,BufRead * Neomake

