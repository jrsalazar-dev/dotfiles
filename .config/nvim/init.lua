
vim.cmd 'source ~/.config/nvim/lua/variables.vim'

vim.g.dracula_transparent_bg = true
vim.g.dracula_colors = {
  bg = "NONE",
}

require('opts')
require('plugins')
require('plugins-config')
require('cmp-config')
require('lsp')
require('mappings')
