-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/jordansalazar/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/jordansalazar/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/jordansalazar/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/jordansalazar/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/jordansalazar/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["blamer.nvim"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/blamer.nvim",
    url = "https://github.com/APZelos/blamer.nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-npm"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/cmp-npm",
    url = "https://github.com/David-Kunz/cmp-npm"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-document-symbol"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-document-symbol",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-document-symbol"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["dracula.nvim"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  fzf = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf-lsp.nvim"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/fzf-lsp.nvim",
    url = "https://github.com/gfanto/fzf-lsp.nvim"
  },
  ["fzf-lua"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-transparent"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/nvim-transparent",
    url = "https://github.com/xiyaowong/nvim-transparent"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-endwise"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/nvim-treesitter-endwise",
    url = "https://github.com/RRethy/nvim-treesitter-endwise"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/jordansalazar/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
