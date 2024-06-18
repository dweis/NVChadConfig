require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

map("n", "<leader>dr", function()
  require("dap").repl_open()
end, { desc = "Debugger Toggle Repl" })

map("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })

map({ "n", "v" }, "<leader>dh", function()
  require("dap.ui.widgets").hover()
end, { desc = "Debugger UI Hover" })

map("n", "<leader>df", function()
  require("dap.ui.widgets").preview()
end, { desc = "Debugger UI Preview" })

map("n", "<leader>df", function()
  local widgets = require "dap.ui.widgets"
  widgets.centered_float(widgets.frames)
end, { desc = "Debugger UI Widgets" })

map("n", "<leader>dR", function()
  require("dap").run_last()
end, { desc = "Run Last" })

map("n", "<leader>dc", function()
  require("dap").continue()
end, { desc = "Debug Continue" })
map("n", "<leader>dv", function()
  require("dap").step_over()
end, { desc = "Step Over" })
map("n", "<leader>d>", function()
  require("dap").step_into()
end, { desc = "Step In" })
map("n", "<leader>d<", function()
  require("dap").step_out()
end, { desc = "Step Out" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
