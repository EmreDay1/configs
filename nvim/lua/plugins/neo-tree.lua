return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- icons
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        default_component_configs = {
          icon = {
            enabled = true,
          },
        },
        filesystem = {
          filtered_items = {
            visible = true, -- show hidden & dotfiles
            hide_dotfiles = false,
            hide_gitignored = true,
          },
        },
        window = {
          position = "left",
          width = 30,
        },
      })

      -- Keybinding to toggle Neo-tree
      vim.keymap.set("n", "<C-n>", "<Cmd>Neotree toggle<CR>", {
        noremap = true,
        silent = true,
        desc = "Toggle Neo-tree",
      })
    end,
  },
}
