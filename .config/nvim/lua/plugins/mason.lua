return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		lazy = false,
		opts = {
			ensure_installed = {
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"rust_analyzer",
			},
			automatic_installation = true,
		},
		config = function(opts)
			require("mason-lspconfig").setup(opts)
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		lazy = false,
		opts = {
			ensure_installed = {
				"lua-language-server",
				"vim-language-server",
				"prettier",
			},
		},
	},
	-- { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },

	{ "neovim/nvim-lspconfig" },
	-- { "mfussenegger/nvim-lint" },
	{ "onsails/lspkind-nvim" },
	-- { "MunifTanjim/prettier.nvim" },
	{ "sbdchd/neoformat" },
}
