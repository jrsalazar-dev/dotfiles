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

nnoremap("<leader>s", ":w<CR>")
-- nnoremap("<leader>w", ":wq<CR>")
nnoremap("<leader>q", ":qa!<CR>")
nnoremap("<leader>w", ":wq<CR>")
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

vim.cmd([[  au TextYankPost * silent! lua vim.highlight.on_yank() ]])

-- vim.cmd([[
--   augroup PrettierWrite
--     autocmd!
--     autocmd BufWritePre *.json,*.jsx,*.js,*.scss,*.css,*.html,*.tsx,*.ts Prettier
--   augroup end
-- ]])
