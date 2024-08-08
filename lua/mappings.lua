require "nvchad.mappings"
-- add yours here
local hydra = require "hydra"
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

hydra {
  name = "Gitsigns keys",
  hint = [[
      _p_: Preview hunk  _d_: Show diff
      _w_: Next hunk  _b_: Previous hunk
      ^^     _<esc>_/_q_: exit ]],
  config = {
    color = "pink",
    invoke_on_body = true,
    hint = {
      border = "rounded", -- you can change the border if you want
    },
  },
  mode = { "n" },
  body = "<localleader>g", -- this is the key that triggers the hydra
  heads = {
    { "p", ":Gitsigns preview_hunk<cr>" },
    { "d", ":Gitsigns diffthis<cr>" },
    { "w", ":Gitsigns next_hunk<CR>" },
    { "b", ":Gitsigns prev_hunk<CR>" },
    { "l", ":Gitsigns toggle_current_line_blame<CR>" },
    { "<esc>", nil, { exit = true } },
    { "q", nil, { exit = true } },
  },
}
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

local function keys(str)
  return function()
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(str, true, false, true), "m", true)
  end
end

hydra {
  name = "QuartoNavigator",
  hint = [[
      _j_/_k_: move down/up  _r_: run cell
      _l_: run line  _R_: run above
      ^^     _<esc>_/_q_: exit ]],
  config = {
    color = "pink",
    invoke_on_body = true,
    hint = {
      border = "rounded", -- you can change the border if you want
    },
  },
  mode = { "n" },
  body = "<localleader>j", -- this is the key that triggers the hydra
  heads = {
    { "j", keys "]b" },
    { "k", keys "[b" },
    { "r", ":QuartoSend<CR>" },
    { "l", ":QuartoSendLine<CR>" },
    { "R", ":QuartoSendAbove<CR>" },
    { "<esc>", nil, { exit = true } },
    { "q", nil, { exit = true } },
  },
}
