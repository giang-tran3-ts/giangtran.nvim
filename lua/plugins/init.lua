return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "liuchengxu/vista.vim",
    lazy = false,
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true
  }

}
