return {
	-- Finders
	{ "junegunn/fzf", build = "./install --bin", lazy = false },
	{
		"ibhagwan/fzf-lua",
		-- optional for icon support
		dependencies = { "kyazdani42/nvim-web-devicons" },
		lazy = false,
		opts = {
			winopts = {
				fullscreen = true,
			},
			fzf_opts = {
				["--layout"] = false,
			},
		},
	},
	{
		"gfanto/fzf-lsp.nvim",
	},
}
