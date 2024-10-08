local cmp = require "cmp"

cmp.setup {
  sources = {
    -- Copilot Source
    { name = "copilot", group_index = 2 },
    -- Other Sources
    { name = "nvim_lsp", group_index = 2 },
    { name = "path", group_index = 2 },
    { name = "luasnip", group_index = 2 },
    { name = "nvim_lua", group_index = 2 },
    { name = "buffer", group_index = 2 },
  },
}
