return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    
    null_ls.setup({
      sources = {
        -- Lua formatting
        null_ls.builtins.formatting.stylua,
        
        -- JavaScript/TypeScript/Web formatting
        null_ls.builtins.formatting.prettier,
        
        -- Python formatting
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
      },
    })
    
    -- Set up keymapping for format
    vim.keymap.set("n", "<leader>gf", function()
      vim.lsp.buf.format({ async = true })
    end, { noremap = true, silent = true, desc = "Format current buffer" })
  end,
}
