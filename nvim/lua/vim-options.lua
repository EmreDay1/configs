
-- ~/.config/nvim/lua/vim-options.lua

-- Set leader key
vim.g.mapleader = " "  -- set leader key to space

-- Line numbering
vim.cmd("set number")         -- show absolute line numbers
vim.cmd("set relativenumber") -- show relative line numbers

-- Indentation settings
vim.cmd("set expandtab")       -- convert tabs to spaces
vim.cmd("set tabstop=2")       -- number of spaces per tab
vim.cmd("set softtabstop=2")   -- number of spaces for soft tabs
vim.cmd("set shiftwidth=2")    -- size of each indentation level
