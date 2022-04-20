
vim.cmd [[packadd packer.nvim]]

-- Recompile packer after changing config
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost ~/.config/nvim/lua/plugins.lua source ~/.config/nvim/init.lua | PackerCompile
  augroup end
]])

return require('packer').startup({
  function(use)
    use { 'tpope/vim-repeat' }
    use { 'tpope/vim-surround' }
    use { 'Mofiqul/dracula.nvim' }
    use { 'xiyaowong/nvim-transparent' }
    use { 'wbthomason/packer.nvim' }
    use { 'junegunn/fzf', run = './install --bin' }
    use { 'RRethy/nvim-treesitter-endwise' }
    use { 'windwp/nvim-ts-autotag' }
    use { "editorconfig/editorconfig-vim" }
    use { 'ibhagwan/fzf-lua',
      -- optional for icon support
      requires = { 'kyazdani42/nvim-web-devicons' }
    }

    use { 'prettier/vim-prettier'}

    -- LSP
    use { 'neovim/nvim-lspconfig' }
    use { 'gfanto/fzf-lsp.nvim' }
    use { 'onsails/lspkind-nvim' }
    use { 'williamboman/nvim-lsp-installer' }

    use 'nvim-lua/plenary.nvim'

    -- Completion
    use { 'hrsh7th/vim-vsnip' }
    use { 'L3MON4D3/LuaSnip' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/cmp-nvim-lua' }
    use { 'hrsh7th/cmp-nvim-lsp-signature-help' }
    use { 'hrsh7th/cmp-nvim-lsp-document-symbol' }
    use {
      'David-Kunz/cmp-npm',
      requires = {
        'nvim-lua/plenary.nvim'
      }
    }


    use { 'kyazdani42/nvim-web-devicons' }

    use {
      'nvim-lualine/lualine.nvim'
    }

    use { 'APZelos/blamer.nvim' }
    use { 'christoomey/vim-tmux-navigator' }
    use { 'voldikss/vim-floaterm' }
    use { 'vim-test/vim-test' }
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use {
      'numToStr/Comment.nvim'
    }
    use {
      'nvim-neo-tree/neo-tree.nvim',
      branch = "v2.x",
      requires = {
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim"
      }
    }
    use {
      'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' }
    }
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }
    use { 'rcarriga/nvim-notify' }
    use { 'antoinemadec/FixCursorHold.nvim' }

    use { 'windwp/nvim-autopairs' }
    use { 'nvim-lua/popup.nvim' }
  end,
  config = {
    display = {
      open_fn = require('packer.util').float,
    }
  }
})
