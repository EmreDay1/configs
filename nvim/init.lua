-- ~/.config/nvim/init.lua

-- Vim Options (Set up basic settings)
require("vim-options")

-- Lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set up Lazy.nvim and load the plugins
require("lazy").setup("plugins")
