-- Chadrc overrides this file

local M = {}

M.options = {
  nvChad = {
    update_url = "https://github.com/NvChad/NvChad",
    update_branch = "main",
  },
}

M.ui = {
  -- hl = highlights
  hl_add = {},
  hl_override = {},
  changed_themes = {},
  theme_toggle = { "onedark", "one_light" },
  theme = "onedark", -- default theme
  transparency = false,
}

M.copilot = {
  mode_opts = { expr = true },
  i = {
    ["<C-h>"] = { 'copilot#Accept("<Left>")', "   copilot accept" },
  },
}

M.plugins = {}

-- check core.mappings for table structure
M.mappings = require "core.mappings"

return M
