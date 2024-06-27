vim.cmd([[packadd packer.nvim]])

-- Recompile packer after changing config
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost ~/.config/nvim/lua/plugins.lua source ~/.config/nvim/init.lua | PackerCompile
  augroup end
]])

return require("packer").startup({
	function(use)
		-- Package manager
		use({ "wbthomason/packer.nvim" })
		-- Vim Utils
		use({ "tpope/vim-repeat" })
		use({ "tpope/vim-surround" })

		-- Colorscheme
		use({ "Mofiqul/dracula.nvim" })
		use({ "xiyaowong/transparent.nvim" })

		-- Finders
		use({ "junegunn/fzf", run = "./install --bin" })
		use({
			"ibhagwan/fzf-lua",
			-- optional for icon support
			requires = { "kyazdani42/nvim-web-devicons" },
		})

		-- Treesitter
		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
		})
		-- use { 'RRethy/nvim-treesitter-endwise' }
		use({ "windwp/nvim-ts-autotag" })

		-- LSP
		use({ "williamboman/mason.nvim" })
		use({ "williamboman/mason-lspconfig.nvim" })
		use({ "neovim/nvim-lspconfig" })
		use({ "mfussenegger/nvim-lint" })
		use({ "gfanto/fzf-lsp.nvim" })
		use({ "onsails/lspkind-nvim" })
		use({ "MunifTanjim/prettier.nvim" })
		use({ "sbdchd/neoformat" })

		-- Dependencies
		use({ "nvim-lua/plenary.nvim" })
		use({ "voldikss/vim-floaterm" })

		use({ "ray-x/go.nvim" })
		use({ "ray-x/guihua.lua" })

		-- Completion
		use({ "hrsh7th/vim-vsnip" })
		use({ "L3MON4D3/LuaSnip" })
		use({ "hrsh7th/nvim-cmp" })
		use({ "hrsh7th/cmp-nvim-lsp" })
		use({
			"zbirenbaum/copilot.lua",
			cmd = "Copilot",
			event = "InsertEnter",
			config = function()
				require("copilot").setup({
					suggestion = { enabled = false },
					panel = { enabled = false },
				})
			end,
		})
		use({
			"zbirenbaum/copilot-cmp",
			after = { "copilot.lua" },
			config = function()
				require("copilot_cmp").setup()
			end,
		})
		-- use { 'hrsh7th/cmp-buffer' }
		-- use({ "hrsh7th/cmp-path" })
		-- use({ "hrsh7th/cmp-cmdline" })
		-- use { 'hrsh7th/cmp-nvim-lua' }
		-- use { 'hrsh7th/cmp-nvim-lsp-signature-help' }
		-- use { 'hrsh7th/cmp-nvim-lsp-document-symbol' }
		-- use {
		--   'David-Kunz/cmp-npm',
		--   requires = {
		--     'nvim-lua/plenary.nvim'
		--   }
		-- }

		-- Typography
		use({ "kyazdani42/nvim-web-devicons" })
		use({
			"lewis6991/gitsigns.nvim",
			requires = { "nvim-lua/plenary.nvim" },
		})

		-- Line
		use({
			"nvim-lualine/lualine.nvim",
		})
		use({ "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" })

		-- Misc
		use({ "vzze/cmdline.nvim" })
		use({ "ton/vim-bufsurf" })
		use({ "windwp/nvim-autopairs" })
		use({ "editorconfig/editorconfig-vim" })
		use({
			"iamcco/markdown-preview.nvim",
			run = "cd app && npm install",
			setup = function()
				vim.g.mkdp_filetypes = { "markdown" }
			end,
			ft = { "markdown" },
		})
		use({ "christoomey/vim-tmux-navigator" })
		use({ "APZelos/blamer.nvim" })
		use({ "numToStr/Comment.nvim" })
		use({
			"nvim-neo-tree/neo-tree.nvim",
			branch = "v2.x",
			requires = {
				"nvim-lua/plenary.nvim",
				"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
				"MunifTanjim/nui.nvim",
			},
		})
	end,
	config = {
		display = {
			open_fn = require("packer.util").float,
		},
	},
})
