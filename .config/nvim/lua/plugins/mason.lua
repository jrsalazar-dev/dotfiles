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
			require("mason-lspconfig").setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			})
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
	{ "neovim/nvim-lspconfig" },
	-- { "mfussenegger/nvim-lint" },
	{ "onsails/lspkind-nvim" },
	-- { "MunifTanjim/prettier.nvim" },
	{ "sbdchd/neoformat" },
}
