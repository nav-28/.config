return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "moon",
      disable_float_background = true,
      groups = {
        background = "none",
        panel = "surface",
        panel_nc = "base",
        border = "highlight_med",
        comment = "muted",
        link = "iris",
        punctuation = "subtle",

        error = "love",
        hint = "iris",
        info = "foam",
        warn = "gold",
        headings = "subtle",
      },

      highlight_groups = {
        TelescopeBorder = { fg = "none", bg = "none" },
        TelescopeNormal = { bg = "none" },
        TelescopePromptNormal = { bg = "none" },
        TelescopeResultsNormal = { fg = "none", bg = "none" },
        TelescopeSelection = { fg = "none", bg = "none" },
        TelescopeSelectionCaret = { fg = "rose", bg = "none" },
      },
    },
  },
  --

  {
    "nvim-lualine/lualine.nvim",
    init = function()
      local auto_theme_custom = require("lualine.themes.auto")
      auto_theme_custom.normal.c.bg = "none"
      require("lualine").setup({ options = { theme = auto_theme_custom } })
    end,
    opts = {
      options = {
        theme = "rose-pine",
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
