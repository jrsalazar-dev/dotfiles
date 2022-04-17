local vim = vim

vim.cmd[[colorscheme dracula]]
-- vim.cmd([[ autocmd ColorScheme * :lua require('vim.lsp.diagnostic')._define_default_signs_and_highlights() ]])
-- vim.api.nvim_exec([[
-- augroup FormatAutogroup
--   autocmd!
--   autocmd BufWritePre *.ts,*.js,*.tsx,*.scss,*.html,*.lua FormatWrite
-- augroup END
-- ]], true)

-- vim.lsp.

vim.lsp.set_log_level(4)

vim.opt.confirm = false
vim.opt.updatetime = 300
vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.scroll = 15
vim.opt.termguicolors = true
vim.opt.colorcolumn = '80'
vim.opt.visualbell = false
vim.opt.backup = true
vim.opt.backupdir = "/Users/jordansalazar/.config/nvim/tmp"
vim.opt.undofile = true
vim.opt.undodir = "/Users/jordansalazar/.config/nvim/undo"
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.mouse = "a"
vim.opt.conceallevel = 0
vim.opt.signcolumn = 'yes'
vim.opt.cursorline = true
vim.opt.splitright = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.syntax = 'on'

vim.g.blamer_delay = 200
vim.g.blamer_enabled = 1
vim.g.blamer_relative_time = 1

vim.diagnostic.config({
  underline = true,
  signs = true,
  virtual_text = false,
  float = {
    show_header = false,
    source = 'if_many',
    border = 'rounded',
    focusable = false,
  },
})
