local lsp_installer = require "nvim-lsp-installer"

local function goto_definition(split_cmd)
  local util = vim.lsp.util
  local log = require("vim.lsp.log")
  local api = vim.api

  -- note, this handler style is for neovim 0.5.1/0.6, if on 0.5, call with function(_, method, result)
  local handler = function(_, result, ctx)
    if result == nil or vim.tbl_isempty(result) then
      local _ = log.info() and log.info(ctx.method, "No location found")
      return nil
    end

    if split_cmd then
      vim.cmd(split_cmd)
    end

    if vim.tbl_islist(result) then
      util.jump_to_location(result[1])

      if #result > 1 then
        util.set_qflist(util.locations_to_items(result))
        api.nvim_command("copen")
        api.nvim_command("wincmd p")
      end
    else
      util.jump_to_location(result)
    end
  end

  return handler
end

local function on_attach(client, bufnr)
  local opts = { noremap=true, silent=true }
  vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.cmd [[autocmd! CursorHold * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor",header=""})]]

  if client.resolved_capabilities.document_formatting then
    vim.cmd(
      [[
        augroup LspFormatting
            autocmd! * <buffer>
            autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
        augroup END
      ]]
    )
  end

  vim.lsp.handlers["textDocument/codeAction"] = require'fzf_lsp'.code_action_handler
  vim.lsp.handlers["textDocument/definition"] = require'fzf_lsp'.definition_handler
  vim.lsp.handlers["textDocument/declaration"] = require'fzf_lsp'.declaration_handler
  vim.lsp.handlers["textDocument/typeDefinition"] = require'fzf_lsp'.type_definition_handler
  vim.lsp.handlers["textDocument/implementation"] = require'fzf_lsp'.implementation_handler
  vim.lsp.handlers["textDocument/references"] = require'fzf_lsp'.references_handler
  vim.lsp.handlers["textDocument/documentSymbol"] = require'fzf_lsp'.document_symbol_handler
  vim.lsp.handlers["workspace/symbol"] = require'fzf_lsp'.workspace_symbol_handler
  vim.lsp.handlers["callHierarchy/incomingCalls"] = require'fzf_lsp'.incoming_calls_handler
  vim.lsp.handlers["callHierarchy/outgoingCalls"] = require'fzf_lsp'.outgoing_calls_handler

  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
      underline = true,
      signs = true,
      virtual_text = false,
      float = {
        show_header = false,
        source = 'if_many',
        border = 'rounded',
        focusable = false,
      },
      update_in_insert = true,
    })
  end

  local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end

  local enhance_server_opts = {
    ["stylelint_lsp"] = function(opts)
      opts.settings = {
        format = {
          enable = false,
        },
      }
      return opts
    end,
    ["emmet_ls"] = function(opts)
      opts.settings = {
        filetypes = { "html", "css", "typescriptreact", "javascriptreact" },
      }
      return opts
    end,
  }

  lsp_installer.on_server_ready(function(server)
    -- Specify the default options which we'll use to setup all servers
    local opts = {
      on_attach = on_attach,
    }

    if enhance_server_opts[server.name] then
      -- Enhance the default opts with the server-specific ones
      enhance_server_opts[server.name](opts)
    end

    if server.name == 'stylelint_lsp' or server.name == 'jsonls' then
      opts = {
        on_attach = function(client, bufnr)
          on_attach(client, bufnr)
          client.resolved_capabilities.document_formatting = false
          client.resolved_capabilities.document_range_formatting = false
        end
      }
    end

    server:setup(opts)
  end)
