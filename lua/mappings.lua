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
map("n", "<localleader>gw", "<cmd>Gitsigns next_hunk<cr>", { desc = "Gitsigns | Next hunk" })
map("n", "<localleader>gb", "<cmd>Gitsigns prev_hunk<cr>", { desc = "Gitsigns | Previous hunk" })
map("n", "<leader>gd", "<cmd>Gitsigns diffthis<cr>", { desc = "Gitsigns | Show diff" })

-- notebook
local runner = require "quarto.runner"
vim.keymap.set("n", "<localleader>rc", runner.run_cell, { desc = "run cell", silent = true })
vim.keymap.set("n", "<localleader>ra", runner.run_above, { desc = "run cell and above", silent = true })
vim.keymap.set("n", "<localleader>rA", runner.run_all, { desc = "run all cells", silent = true })
vim.keymap.set("n", "<localleader>rl", runner.run_line, { desc = "run line", silent = true })
vim.keymap.set("v", "<localleader>r", runner.run_range, { desc = "run visual range", silent = true })
vim.keymap.set("n", "<localleader>RA", function()
  runner.run_all(true)
end, { desc = "run all cells of all languages", silent = true })

vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>", { desc = "evaluate operator", silent = true })
vim.keymap.set(
  "n",
  "<localleader>os",
  ":noautocmd MoltenEnterOutput<CR>",
  { desc = "open output window", silent = true }
)
vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>", { desc = "re-eval cell", silent = true })
vim.keymap.set(
  "v",
  "<localleader>r",
  ":<C-u>MoltenEvaluateVisual<CR>gv",
  { desc = "execute visual selection", silent = true }
)
vim.keymap.set("n", "<localleader>oh", ":MoltenHideOutput<CR>", { desc = "close output window", silent = true })
vim.keymap.set("n", "<localleader>d", ":MoltenDelete<CR>", { desc = "delete Molten cell", silent = true })
vim.keymap.set("n", "<localleader>n", ":MoltenNext<CR>", { desc = "next Molten cell", silent = true })
vim.keymap.set("n", "<localleader>b", ":MoltenPrev<CR>", { desc = "prev Molten cell", silent = true })
vim.keymap.set("n", "<localleader>ki", ":MoltenInit<CR>", { desc = "Initialize Molten kernel", silent = true })
vim.keymap.set("n", "<localleader>kn", ":MoltenInfo<CR>", { desc = "Info Molten kernel", silent = true })
-- if you work with html outputs:
vim.keymap.set("n", "<localleader>mx", ":MoltenOpenInBrowser<CR>", { desc = "open output in browser", silent = true })
