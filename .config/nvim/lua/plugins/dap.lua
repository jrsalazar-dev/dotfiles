return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")

			vim.keymap.set("n", "<Down>", '<cmd>lua require"dap".step_over()<CR>', { desc = "DAP step over" })
			vim.keymap.set("n", "<Right>", '<cmd>lua require"dap".step_into()<CR>', { desc = "DAP step into" })
			vim.keymap.set("n", "<Left>", '<cmd>lua require"dap".step_out()<CR>', { desc = "DAP step out" })

			vim.keymap.set("n", "<leader>du", '<cmd>lua require"dapui".toggle()<CR>', { desc = "DAP toggle UI" })

			-- reset dap ui
			vim.keymap.set("n", "<leader>dr", function()
				local dapui = require("dapui")
				dapui.close()
				dapui.open({ reset = true })
			end, { desc = "DAP reset UI" })

			vim.keymap.set("n", "<leader>de", '<cmd>lua require"dapui".eval()<CR>', { desc = "DAP eval" })

			vim.keymap.set(
				"n",
				"<leader>dx",
				'<cmd>lua require"dap".continue()<CR>',
				{ desc = "Start debugging" }
			)
			vim.keymap.set(
				"n",
				"<leader>db",
				'<cmd>lua require"dap".toggle_breakpoint()<CR>',
				{
					desc = "DAP set breakpoint",
				}
			)

			vim.api.nvim_create_user_command("DapDisconnect", function()
				require("dap").disconnect()
				require("dapui").close()
			end, {})

			dap.configurations.typescript = {
				{
					name = "attach to typescript",
					type = "node2",
					request = "attach",
					port = function()
						return tonumber(vim.fn.input("Debug Port: ", "9229"))
					end,
					cwd = vim.fn.getcwd(),
					sourceMaps = true,
					skipFiles = { "<node_internals>/**", "node_modules/**" },
				},
			}
      dap.adapters.delve = function(callback, config)
        if config.mode == 'remote' and config.request == 'attach' then
          callback({
            type = 'server',
            host = config.host or '127.0.0.1',
            port = config.port or '38697'
          })
        else
          callback({
            type = 'server',
            port = '${port}',
            executable = {
              command = 'dlv',
              args = { 'dap', '-l', '127.0.0.1:${port}', '--log', '--log-output=dap' },
              detached = vim.fn.has("win32") == 0,
            }
          })
        end
      end


      -- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
      dap.configurations.go = {
        {
          type = "delve",
          name = "Attach delve",
          request = "attach",
          mode = "remote"
        },
      }
    end,
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end

      -- TODO: finish
      -- require('skeleton.config.dap.save_breakpoints').setup()
    end,
  },

  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      ensure_installed = {
        "delve", -- golang
      },
    },
  },

  {
    "leoluz/nvim-dap-go",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    opts = {
      delve = {
        build_flags = "-tags=dynamic",
      },
    },
  },
}
