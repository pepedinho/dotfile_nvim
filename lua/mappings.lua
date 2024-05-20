require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local M = {}

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

M.dap = {
  plugins = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add Breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debbuger",
    }
  }
}

return M
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
