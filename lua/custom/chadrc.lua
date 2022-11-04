-- First read our docs (completely) then check the example_config repo

local M = {}

M.mappings = require "custom.mappings"
M.options = require "custom.options"
M.plugins = require "custom.plugins"

M.ui = {
  theme = "gruvbox_material",
}

return M
