vim.cmd([[colorscheme dracula]])

vim.cmd("source ~/.config/nvim/lua/variables.vim")

require("bootstrap")
require("config.options")
require("config.keymaps")

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local fzf_lsp = require("fzf_lsp")
		vim.lsp.handlers["textDocument/codeAction"] = fzf_lsp.code_action_handler
		vim.lsp.handlers["textDocument/definition"] = fzf_lsp.definition_handler
		vim.lsp.handlers["textDocument/declaration"] = fzf_lsp.declaration_handler
		vim.lsp.handlers["textDocument/typeDefinition"] = fzf_lsp.type_definition_handler
		vim.lsp.handlers["textDocument/implementation"] = fzf_lsp.implementation_handler
		vim.lsp.handlers["textDocument/references"] = fzf_lsp.references_handler
		vim.lsp.handlers["textDocument/documentSymbol"] = fzf_lsp.document_symbol_handler
		vim.lsp.handlers["workspace/symbol"] = fzf_lsp.workspace_symbol_handler
		vim.lsp.handlers["callHierarchy/incomingCalls"] = fzf_lsp.incoming_calls_handler
		vim.lsp.handlers["callHierarchy/outgoingCalls"] = fzf_lsp.outgoing_calls_handler
		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }

		vim.cmd([[autocmd! CursorHold * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor",header=""})]])
		vim.keymap.set("n", "gD", fzf_lsp.declaration_call, opts)
		vim.keymap.set("n", "gd", fzf_lsp.definition_call, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gi", fzf_lsp.implementation_call, opts)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
		vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
		vim.keymap.set("n", "<space>wl", function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<space>ca", fzf_lsp.code_action_call, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<space>f", function()
			vim.lsp.buf.format({ async = true })
		end, opts)
	end,
})
