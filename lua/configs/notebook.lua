local quarto = require "quarto"
quarto.setup {
  lspFeatures = {
    -- NOTE: put whatever languages you want here:
    languages = { "r", "python", "rust" },
    chunks = "all",
    diagnostics = {
      enabled = true,
      triggers = { "BufWritePost" },
    },
    completion = {
      enabled = true,
    },
  },
  keymap = {
    -- NOTE: setup your own keymaps:
    hover = "H",
    definition = "gd",
    rename = "<leader>rn",
    references = "gr",
    format = "<leader>gf",
  },
  codeRunner = {
    enabled = true,
    default_method = "molten",
  },
}

require("jupytext").setup {
  style = "markdown",
  output_extension = "md",
  force_ft = "markdown",
}

require("nvim-treesitter.configs").setup {
  -- ... other ts config
  textobjects = {
    move = {
      enable = true,
      set_jumps = false, -- you can change this if you want.
      goto_next_start = {
        --- ... other keymaps
        ["]b"] = { query = "@code_cell.inner", desc = "next code block" },
      },
      goto_previous_start = {
        --- ... other keymaps
        ["[b"] = { query = "@code_cell.inner", desc = "previous code block" },
      },
    },
    select = {
      enable = true,
      lookahead = true, -- you can change this if you want
      keymaps = {
        --- ... other keymaps
        ["ib"] = { query = "@code_cell.inner", desc = "in block" },
        ["ab"] = { query = "@code_cell.outer", desc = "around block" },
      },
    },
    swap = { -- Swap only works with code blocks that are under the same
      -- markdown header
      enable = true,
      swap_next = {
        --- ... other keymap
        ["<leader>sbl"] = "@code_cell.outer",
      },
      swap_previous = {
        --- ... other keymap
        ["<leader>sbh"] = "@code_cell.outer",
      },
    },
  },
}
