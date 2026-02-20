---@type ChadrcConfig
local M = {}

M.ui = { theme = 'palenight' }
M.plugins = 'custom.plugins'
M.terminal = require("custom.terminal").setup()
M.mappings = require "custom.mappings"

return M
