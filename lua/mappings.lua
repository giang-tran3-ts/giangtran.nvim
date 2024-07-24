require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n", "i", "v" }, "<C-q>", "<cmd> q <cr>")

map("n", "<leader>vv", "<cmd>Vista!!<cr>", { desc = "Vista ctags" })

map("i", "<D-Left>", "<C-O>0", { desc = "Move to start of line" }) -- <D stand for command key in mac
map("i", "<D-Right>", "<C-O>$", { desc = "Move to end of line" })

map("i", "<A-Left>", "<C-O>b", { desc = "Move to previous word" })
map("i", "<A-Right>", "<C-O>w", { desc = "Move to next word" })

-- tab window navigation
map("n", "<leader>Tt", "<cmd>tabNext<cr>", { desc = "Next tab" })
map("n", "<leader>TT", "<cmd>tabprevious<cr>", { desc = "Previous tab" })
map("n", "<leader>Tc", "<cmd>tabclose<cr>", { desc = "Close tab" })
map("n", "<leader>Tn", "<cmd>tabnew<cr>", { desc = "New tab" })
