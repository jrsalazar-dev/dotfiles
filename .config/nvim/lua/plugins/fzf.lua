return {
	-- FZF Plugins
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
		-- Automatically uses FZF for all LSP multiple choice prompts
		"gfanto/fzf-lsp.nvim",
	},
}
