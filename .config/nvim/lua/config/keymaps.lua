local Utils = require("config.utils")

-- local exprnnoremap = Utils.exprnnoremap
local nnoremap = Utils.nnoremap
local vnoremap = Utils.vnoremap
local cnoremap = Utils.cnoremap
local inoremap = Utils.inoremap
-- local tnoremap = Utils.tnoremap
-- local nmap = Utils.nmap
-- local xmap = Utils.xmap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- nnoremap("<space>", "/")

nnoremap("<leader>p", "\"0p")
nnoremap("<leader>s", ":w<CR>")
nnoremap("<leader>q", ":qa!<CR>")
nnoremap("<leader>w", ":wq<CR>")
nnoremap("<leader>nf", ":Neoformat<CR>")
nnoremap("<leader>h", ":noh<CR>")

nnoremap("<leader>tn", ":TestNearest<cr>")
nnoremap("<leader>tf", ":TestFile<cr>")
nnoremap("<leader>tl", ":TestLast<cr>")

nnoremap("˙", ":TmuxNavigateLeft<CR>")
nnoremap("¬", ":TmuxNavigateRight<CR>")
nnoremap("∆", ":TmuxNavigateDown<CR>")
nnoremap("˚", ":TmuxNavigateUp<CR>")

nnoremap("<leader>a", "<CMD>lua require('fzf-lua').buffers()<CR>")
nnoremap("<C-p>", "<CMD>lua require('fzf-lua').files()<CR>")
nnoremap("<leader>fg", "<CMD>lua require('fzf-lua').live_grep()<CR>")
nnoremap("<leader>fo", "<CMD>lua require('fzf-lua').oldfiles()<CR>")

nnoremap("<leader>fsh", "<CMD>lua require('fzf-lua').search_history()<CR>")
nnoremap("<leader>fch", "<CMD>lua require('fzf-lua').command_history()<CR>")
nnoremap("<leader>fb", "<CMD>lua require('fzf-lua').builtin()<CR>")

-- Git operations
-- nnoremap("<leader>gp", "")

cnoremap("<C-s>", "<C-r><C-w>")

nnoremap("[b", "<Plug>(buf-surf-back)")
nnoremap("]b", "<Plug>(buf-surf-forward)")

nnoremap("n", "nzz")
nnoremap("N", "Nzz")
nnoremap("*", "*zz")
nnoremap("#", "#zz")

nnoremap("\\", ":Neotree reveal<CR>")

nnoremap("<leader>dc", "<CMD>require('dap').continue()<CR>")
nnoremap("<leader>ds", "<CMD>require('dap').step_over()<CR>")
nnoremap("<leader>db", "<CMD>require('dap').toggle_breakpoint()<CR>")
nnoremap("<leader>dr", "<CMD>require('dap').repl.open()<CR>")

-- vim.keymap.set('n', '<leader>dc', function() require('dap').continue() end)
-- vim.keymap.set('n', '<leader>ds', function() require('dap').step_over() end)
-- vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
-- vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
-- vim.keymap.set('n', '<leader>db', function() require('dap').toggle_breakpoint() end)
-- vim.keymap.set('n', '<leader>dl', function() require('dap').run_last() end)
-- vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
--   require('dap.ui.widgets').hover()
-- end)
-- vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
--   require('dap.ui.widgets').preview()
-- end)
-- vim.keymap.set('n', '<Leader>df', function()
--   local widgets = require('dap.ui.widgets')
--   widgets.centered_float(widgets.frames)
-- end)
-- vim.keymap.set('n', '<Leader>ds', function()
--   local widgets = require('dap.ui.widgets')
--   widgets.centered_float(widgets.scopes)
-- end)

vim.cmd([[  au TextYankPost * silent! lua vim.highlight.on_yank() ]])

-- vim.cmd([[
--   augroup PrettierWrite
--     autocmd!
--     autocmd BufWritePre *.json,*.jsx,*.js,*.scss,*.css,*.html,*.tsx,*.ts Prettier
--   augroup end
-- ]])
