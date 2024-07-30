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
map("n", "<leader>tt", "<cmd>tabNext<cr>", { desc = "Next tab" })
map("n", "<leader>tT", "<cmd>tabprevious<cr>", { desc = "Previous tab" })
map("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close tab" })
map("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "New tab" })

-- terminal
map({ "n", "i" }, "<leader>Tt", "<cmd>Lspsaga term_toggle<cr>", { desc = "Toggle terminal" })

-- Lspsaga
map("n", "<leader>dd", "<cmd>Lspsaga hover_doc<cr>", { desc = "Lspsaga | Show hover doc" })
map("n", "<leader>ddk", "<cmd>Lspsaga hover_doc ++keep<cr>", { desc = "Lspsaga | Show hover doc and keep the window" })
map("n", "<leader>o", "<cmd>Lspsaga outline<cr>", { desc = "Lspsaga | Show outline" })
map("n", "<leader>ca", "<cmd>Lspsaga code_action<cr>", { desc = "Lspsaga | Code action" })
map("n", "<leader>ci", "<cmd>Lspsaga incoming_calls<cr>", { desc = "Lspsaga | CallHierachy Incoming calls" })
map("n", "<leader>co", "<cmd>Lspsaga outgoing_calls<cr>", { desc = "Lspsaga | CallHierachy Outgoing calls" })
map("n", "F", "<cmd>Lspsaga finder<cr>", { desc = "Lspsaga | Finder" })
map("n", "<leader>dD", "<cmd>Lspsaga peek_definition<cr>", { desc = "Lspsaga | Peek definition" })

-- gitsigns
map("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", { desc = "Gitsigns | Preview hunk" })
map("n", "<leader>gw", "<cmd>Gitsigns next_hunk<cr>", { desc = "Gitsigns | Next hunk" })
map("n", "<leader>gb", "<cmd>Gitsigns prev_hunk<cr>", { desc = "Gitsigns | Previous hunk" })
map("n", "<leader>gd", "<cmd>Gitsigns diffthis<cr>", { desc = "Gitsigns | Show diff" })
