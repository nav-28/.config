return {
  {
    "theprimeagen/harpoon",
    config = function()
      require("harpoon").setup()
      require("telescope").load_extension("harpoon")
    end,
    keys = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")
      return {
        {
          "<leader>ha",
          function()
            mark.add_file()
          end,
          desc = "add file to harpoon",
        },
        {
          "<leader>hr",
          function()
            local current_file = vim.fn.bufname()
            mark.rm_file(current_file)
          end,
          desc = "remove current from harpoon",
        },
        {
          "<leader>hc",
          function()
            mark.clear_all()
          end,
          desc = "clear files from harpoon",
        },
        {
          "<leader>hq",
          function()
            ui.toggle_quick_menu()
          end,
          desc = "toggle harpoon menu",
        },
        {
          "<M-q>",
          function()
            ui.nav_file(1)
          end,
        },
        {
          "<M-w>",
          function()
            ui.nav_file(2)
          end,
        },
        {
          "<M-e>",
          function()
            ui.nav_file(3)
          end,
        },
        {
          "<M-r>",
          function()
            ui.nav_file(4)
          end,
        },
        {
          "M-n",
          function()
            ui.nav_next()
          end,
        },
        {
          "M-p",
          function()
            ui.nav_prev()
          end,
        },
      }
    end,
  },
}
