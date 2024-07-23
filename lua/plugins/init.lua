return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "liuchengxu/vista.vim",
    lazy = false,
    config = function()
      vim.g.vista_icon_indent = { "╰─▸ ", "├─▸ " }
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    lazy = false,
  },
  {
    "benlubas/molten-nvim",
    lazy = false,
    version = "^1.0.0",
    build = ":UpdateRemotePlugins",
  },
  {
    "RRethy/vim-illuminate",
    lazy = false,
  },
}
