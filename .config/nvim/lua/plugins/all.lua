return {
	-- Vim Utils
	{ "tpope/vim-repeat" },
	{ "tpope/vim-surround" },
	{
		"benomahony/uv.nvim",
		-- Optional filetype to lazy load when you open a python file
		-- ft = { python }
		-- Optional dependency, but recommended:
		-- dependencies = {
		--   "folke/snacks.nvim"
		-- or
		--   "nvim-telescope/telescope.nvim"
		-- },
		opts = {
			picker_integration = true,
		},
	},
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
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	{ "christoomey/vim-tmux-navigator" },
	-- { "APZelos/blamer.nvim" },
	{
		"f-person/git-blame.nvim",
		-- load the plugin at startup
		event = "VeryLazy",
		-- Because of the keys part, you will be lazy loading this plugin.
		-- The plugin will only load once one of the keys is used.
		-- If you want to load the plugin at startup, add something like event = "VeryLazy",
		-- or lazy = false. One of both options will work.
		opts = {
			-- your configuration comes here
			-- for example
			enabled = true, -- if you want to enable the plugin
			message_template = "• <author> <date> <summary>", -- template for the blame message, check the Message template section for more options
			date_format = "%x", -- template for the date, check Date format section for more options
			virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
		},
	},
	{ "numToStr/Comment.nvim" },
}
