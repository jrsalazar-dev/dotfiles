return {
	-- Vim Utils
	{ "tpope/vim-repeat" },
	{ "tpope/vim-surround" },

	-- Colorscheme
	{ "Mofiqul/dracula.nvim", lazy = false, opts = { transparent_bg = true } },

	{ "xiyaowong/transparent.nvim" },

	-- use({ "sigmasd/deno-nvim" })

	-- Dependencies
	{ "nvim-lua/plenary.nvim" },
	{ "voldikss/vim-floaterm" },

	-- { "ray-x/go.nvim" },
	-- { "ray-x/guihua.lua" },

	-- Completion
	-- use({ "hrsh7th/vim-vsnip" })
	-- use({ "L3MON4D3/LuaSnip" })
	-- use({ "hrsh7th/nvim-cmp" })
	-- use({ "hrsh7th/cmp-nvim-lsp" })
	-- use({
	-- 	"zbirenbaum/copilot.lua",
	-- 	cmd = "Copilot",
	-- 	event = "InsertEnter",
	-- 	config = function()
	-- 		require("copilot").setup({
	-- 			suggestion = { enabled = false },
	-- 			panel = { enabled = false },
	-- 		})
	-- 	end,
	-- })
	-- use({
	-- 	"zbirenbaum/copilot-cmp",
	-- 	after = { "copilot.lua" },
	-- 	config = function()
	-- 		require("copilot_cmp").setup()
	-- 	end,
	-- })
	-- use { 'hrsh7th/cmp-buffer' }
	-- use({ "hrsh7th/cmp-path" })
	-- use({ "hrsh7th/cmp-cmdline" })
	-- use { 'hrsh7th/cmp-nvim-lua' }
	-- use { 'hrsh7th/cmp-nvim-lsp-signature-help' }
	-- use { 'hrsh7th/cmp-nvim-lsp-document-symbol' }
	-- use {
	--   'David-Kunz/cmp-npm',
	--   dependencies = {
	--     'nvim-lua/plenary.nvim'
	--   }
	-- }

	-- Typography
	{ "kyazdani42/nvim-web-devicons" },

	-- Line
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				theme = "dracula",
			},
		},
	},
	{ "akinsho/bufferline.nvim", dependencies = "kyazdani42/nvim-web-devicons" },

	-- Misc
	{ "ton/vim-bufsurf" },
	{ "editorconfig/editorconfig-vim" },
	{
		"iamcco/markdown-preview.nvim",
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = "markdown",
	},
	{ "christoomey/vim-tmux-navigator" },
	-- { "APZelos/blamer.nvim" },
	{ "numToStr/Comment.nvim" },
}
