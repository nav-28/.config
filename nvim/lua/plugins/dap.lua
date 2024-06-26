return {
  {
    "rcarriga/nvim-dap-ui",
    dependecies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  --[[
  {
    "jay-baby/mason-nvim-dap.nvim",
    dependecies = {
      "mfussenegger/nvim-dap",
      "williamboman/mason.nvim",
    },
  },

  --]]
  {
    "mfussenegger/nvim-dap",
  },
}
