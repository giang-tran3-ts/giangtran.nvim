return {
  {
    "RRethy/vim-illuminate",
    event = "LspAttach",
  },
  {
    "liuchengxu/vista.vim",
    event = "LspAttach",
    config = function()
      vim.g.vista_icon_indent = { "╰─▸ ", "├─▸ " }
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      require("lspsaga").setup {
        definition = {
          keys = {
            edit = "o",
            vsplit = "v",
            split = "i",
            tabe = "t",
          },
        },
      }
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },
}
