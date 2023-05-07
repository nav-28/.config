return {
  {
    "hrsh7th/nvim-cmp",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    ---@type TSConfig
    opts = {
      highlight = {
        enable = true,
        disable = function(_, bufnr) -- Disable in large buffers
          return vim.api.nvim_buf_line_count(bufnr) > 10000
        end,
      },
      -- stylua: ignore
      ensure_installed = {
        "dart", "scala", "bash", "html", "java", "latex", "lua", "python", "rust", "typescript", "swift", "c",
      },
    },
  },
}
