" -----------------------------------------------------------------------------
" Filtype
" -----------------------------------------------------------------------------
autocmd BufNewfile,BufRead *.blade.php set syntax=blade ft=blade
autocmd BufNewfile,BufRead Podfile set ft=ruby
autocmd FileType vue,html,css,blade.php EmmetInstall

autocmd FileType cpp ClangFormatAutoEnable

autocmd BufEnter * :syntax sync fromstart

autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
