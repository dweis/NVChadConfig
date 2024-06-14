-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },

  hl_add = {
    DiagnosticUnderlineError = { undercurl = true, sp = "red" },
    DiagnosticUnderlineHint = { undercurl = true, sp = "blue" },
    DiagnosticUnderlineWarn = { undercurl = true, sp = "yellow" },
  },
}

return M
