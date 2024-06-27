-- Setup completion
local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

-- Setup lspconfig.
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Util function used to see if characters are in front of the cursor
local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

-- Tab mapping for completion
local function tab(fallback)
	if cmp.visible() then
		cmp.select_next_item()
	elseif luasnip.expand_or_jumpable() then
		luasnip.expand_or_jump()
	elseif has_words_before() then
		cmp.complete()
	else
		-- F("<Tab>")
		fallback()
	end
end

-- Shift-tab mapping for completion
local function shtab(fallback)
	if cmp.visible() then
		cmp.select_prev_item()
	elseif luasnip.jumpable(-1) then
		luasnip.jump(-1)
	else
		-- F('<S-Tab>')
		fallback()
	end
end

-- Enter mapping for completion
local function enterit(fallback)
	if cmp.visible() and cmp.get_selected_entry() then
		cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
	else
		-- F("<CR>")
		fallback()
	end
end

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			luasnip.lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	mapping = {
		["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		["<C-e>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<Tab>"] = cmp.mapping(tab, { "i", "s", "c" }),
		["<S-Tab>"] = cmp.mapping(shtab, { "i", "s", "c" }),
		["<CR>"] = cmp.mapping(enterit, { "i", "s" }),
	},
	sources = cmp.config.sources({
		{ name = "copilot", group_index = 2 },
		{ name = "nvim_lsp", group_index = 2 },
		{ name = "path", group_index = 2 },
		-- { name = 'buffer', group_index = 2 },
		{ name = "cmdline", group_index = 2 },
		{ name = "nvim_lsp_signature_help", group_index = 2 },
		{ name = "nvim_lsp_document_symbol", group_index = 2 },
		{ name = "npm", group_index = 2, keyword_length = 4 },
		{ name = "luasnip", group_index = 2 },
	}, {
		{ name = "buffer" },
	}),
	-- sorting = {
	--   priority_weight = 2,
	--   comparators = {
	--     require("copilot_cmp.comparators").prioritize,
	--
	--     -- Below is the default comparitor list and order for nvim-cmp
	--     cmp.config.compare.offset,
	--     -- cmp.config.compare.scopes, --this is commented in nvim-cmp too
	--     cmp.config.compare.exact,
	--     cmp.config.compare.score,
	--     cmp.config.compare.recently_used,
	--     cmp.config.compare.locality,
	--     cmp.config.compare.kind,
	--     cmp.config.compare.sort_text,
	--     cmp.config.compare.length,
	--     cmp.config.compare.order,
	--   },
	-- },
})

-- Set configuration for specific filetype.
cmp.setup.filetype("gitcommit", {
	sources = cmp.config.sources({
		{ name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
	}, {
		{ name = "buffer" },
	}),
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline("/", {
	sources = {
		{ name = "buffer" },
	},
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})

-- cmp.setup {
--   formatting = {
--     format = lspkind.cmp_format({
--       mode = 'text_symbol', -- show only symbol annotations
--       maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
--       symbol_map = { Copilot = "" }
--
--       -- The function below will be called before any actual modifications from lspkind
--       -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
--       -- before = function (entry, vim_item)
--       --   return vim_item
--       -- end
--     })
--   }
-- }
