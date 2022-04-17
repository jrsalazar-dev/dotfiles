local Utils = require('utils')

-- local exprnnoremap = Utils.exprnnoremap
local nnoremap = Utils.nnoremap
local vnoremap = Utils.vnoremap
-- local xnoremap = Utils.xnoremap
local inoremap = Utils.inoremap
-- local tnoremap = Utils.tnoremap
-- local nmap = Utils.nmap
-- local xmap = Utils.xmap

vim.g.mapleader = ","
vim.g.maplocalleader = ","

nnoremap("<space>", "/")

nnoremap("<leader>s", ":w<CR>")
nnoremap("<leader>w", ":wq<CR>")
nnoremap("<leader>q", ":q<CR>")
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
nnoremap("<leader>g", "<CMD>lua require('fzf-lua').live_grep()<CR>")

nnoremap("[b", ":BufferLineCyclePrev<CR>")
nnoremap("]b", ":BufferLineCycleNext<CR>")

nnoremap("n", "nzz")
nnoremap("N", "Nzz")
nnoremap("*", "*zz")
nnoremap("#", "#zz")

nnoremap('\\', ":Neotree reveal<CR>")

vim.cmd([[  au TextYankPost * silent! lua vim.highlight.on_yank() ]])


vim.cmd([[
  augroup PrettierWrite
    autocmd!
    autocmd BufWritePre *.jsx,*.js,*.scss,*.css,*.html,*.tsx,*.ts Prettier
  augroup end
]])
