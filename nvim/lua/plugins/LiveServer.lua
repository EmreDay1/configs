-- ~/.config/nvim/lua/plugins/live-server.lua
return {
  "barrett-ruth/live-server.nvim",
  build = "npm install -g live-server", -- Make sure you have Node.js installed
  cmd = { "LiveServerStart", "LiveServerStop" },
  config = function()
    require("live-server").setup({
      port = 8080,
      browser_command = "", -- Set to "" to use the default browser
      quiet = false,
      no_css_inject = false,
    })
  end,
}
