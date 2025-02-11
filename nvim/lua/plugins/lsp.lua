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
  {
    "scalameta/nvim-metals",
    ft = { "scala", "sbt", "java" },
    -- stylua: ignore
    keys = {
      {'<leader>me', function() require "telescope".extensions.metals.commands() end, desc="Metals commands"},
      {'<leader>mc', function() require "metals".compile_cascade() end, desc="Metals compile cascade"},
    },
    config = function()
      local metals = require("metals")
      local config = metals.bare_config()

      config.init_options.statusBarProvider = "on"
      config.settings = {
        showImplicitArguments = true,
        --excludedPackages = {  },
        serverProperties = { "-Xmx2g" },
        serverVersion = "latest.snapshot",
      }

      config.capabilities = require("cmp_nvim_lsp").default_capabilities()

      config.on_attach = function(client, bufnr)
        -- metals.setup_dap()
        require("lsp-format").on_attach(client, bufnr)
      end

      -- Autocmd that will actually be in charge of starting the whole thing
      local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "scala", "sbt", "java" },
        callback = function()
          metals.initialize_or_attach(config)
        end,
        group = nvim_metals_group,
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "codelldb",
      },
    },
  },
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
    opts = {
      widget_guides = {
        enabled = true,
      },
      closing_tags = {
        enabled = false,
      },

      lsp = {
        color = {
          enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
          background = true, -- highlight the background
          background_color = { r = 19, g = 17, b = 24 }, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
          foreground = false, -- highlight the foreground
          virtual_text = true, -- show the highlight using virtual text
          virtual_text_str = "■",
        },
      },
    },
  },
}
