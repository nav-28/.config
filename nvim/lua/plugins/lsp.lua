return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[8] = { "K", vim.lsp.buf.hover, desc = "Hover" }
    end,

    opts = {
      servers = {
        cssls = {},
        dartls = {},
        rust_analyzer = {},
        pyright = {},
      },
    },
  },

  {
    "mfussenegger/nvim-dap",
  },
}
