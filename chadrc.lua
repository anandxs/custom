---@type ChadrcConfig 
local M = {}
M.ui = {
  theme = 'melange',
  theme_toggle = {"melange", "gruvbox"},
  transparency = true,
  statusline = {
    theme = "default",
    separator_style = "block"
  },
  tabufline =  {
    enabled = false
  }
}
M.plugins = "custom/plugins"
-- see https://github.com/NvChad/NvChad/issues/1865
M.lazy_nvim = {
  performance = {
    rtp = {
      disabled_plugins = vim.tbl_filter(function(name)
        return string.sub(name, 1, 5) ~= "netrw"
      end, require("plugins.configs.lazy_nvim").performance.rtp.disabled_plugins),
    },
  },
}
return M
