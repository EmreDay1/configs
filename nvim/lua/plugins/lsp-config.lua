
return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",    
          "ast_grep",      
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      local on_attach = function(_, bufnr)
        local opts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
      end

      -- Lua
      lspconfig.lua_ls.setup({
        on_attach = on_attach,
      })

      -- TypeScript
      lspconfig.ts_ls.setup({
        on_attach = on_attach,
      })

      -- Optional: AstGrep (if installed)
      if lspconfig.ast_grep then
        lspconfig.ast_grep.setup({
          on_attach = on_attach,
        })
      end
    end,
  },
}
