local M = {}

M.mappings = require "custom.mappings"
M.options = require "custom.options"
M.plugins = require "custom.plugins"

-- Find gruvbox_material colorscheme in
-- /home/alpha/.local/share/nvim/site/pack/packer/start/base46/lua/base46/themes/gruvbox_material.lua
M.ui = {
  theme = "gruvbox_material",
  transparency = true,
  changed_themes = {
    gruvbox_material = {
      polish_hl = {
        ["@variable"] = { fg = "#ebdbb2" },
        ["@property"] = { fg = "#eab869" },
      },
      base_16 = {
        base0A = "#ebdbb2",
        base0C = "#7daea3",
      }
    }
  }
}

return M
