return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    event = "VimEnter",
    build = ":UpdateRemotePlugins",
    init = function()
      -- this is an example, not a default. Please see the readme for more configuration options
      vim.g.molten_output_win_max_height = 12
    end,
  },
  {
    "jmbuhr/otter.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {},
  },
  {
    "GCBallesteros/jupytext.nvim",
    config = true,
    -- Depending on your nvim distro or config you may need to make the loading not lazy
    lazy = false,
  },
  {
    "quarto-dev/quarto-nvim",
    dependencies = {
      "jmbuhr/otter.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },

  {
    "Willem-J-an/visidata.nvim",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      local dap = require "dap"
      dap.defaults.fallback.external_terminal = {
        command = "<Path to your terminal of choice>",
        args = { "--hold", "--command" },
      }
      vim.keymap.set("v", "<leader>vp", require("visidata").visualize_pandas_df, { desc = "[v]isualize [p]andas df" })
    end,
  },
}
