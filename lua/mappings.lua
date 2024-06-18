require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
map("n", "<leader>rd", "<cmd>DapContinue<CR>", { desc = "DAP Continue" })
map("n", "<leader>rt", "<cmd>DapToggleBreakpoint<CR>", { desc = "DAP Toggle Breakpoint" })
map("n", "<leader>rr", "<cmd>DapToggleRepl<CR>", { desc = "DAP Toggle Repl" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
