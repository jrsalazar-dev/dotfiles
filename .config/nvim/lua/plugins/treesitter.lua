vim.opt.runtimepath:prepend("/Users/jordansalazar/.config/nvim/parsers")

return {
	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				parser_install_dir = "/Users/jordansalazar/.config/nvim/parsers",
				ensure_installed = {
					"lua",
					"vim",
					"vimdoc",
					"javascript",
					"html",
					"svelte",
					"typescript",
				},
				auto_install = true,
				sync_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		opts = {},
	},
	{ "RRethy/nvim-treesitter-endwise" },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
}
