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
  },
  {
    "dccsillag/magma-nvim",
    lazy = false,
    build = ":UpdateRemotePlugins",
    config = function()
      vim.g.magma_automatically_open_output = true
      vim.g.magma_image_provider = "kitty"
    end,
  },
}
