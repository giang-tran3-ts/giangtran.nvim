return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "benlubas/molten-nvim",
    lazy = false,
    version = "^1.0.0",
    build = ":UpdateRemotePlugins",
  },
}
