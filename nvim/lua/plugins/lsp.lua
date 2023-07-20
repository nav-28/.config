return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[8] = { "K", vim.lsp.buf.hover, desc = "Hover" }
      keys[#keys + 1] = { "<leader>cl", vim.lsp.codelens.run, desc = "LSP code lens" }
      keys[#keys + 1] = { "<leader>cl", vim.diagnostic.setqflist, desc = "Put diagnostic in quickfix" }
      keys[#keys + 1] = { "<leader>cD", vim.diagnostic.open_float, desc = "Open diagnostic float" }
    end,

    opts = {
      servers = {
        cssls = {},
        rust_analyzer = {},
        pyright = {},
      },
    },
  },
}
