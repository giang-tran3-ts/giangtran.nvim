require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
local g = vim.g

-- disable some default providers
g.loaded_node_provider = 0
g.loaded_python3_provider = nil
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

-- I find auto open annoying, keep in mind setting this option will require setting
-- a keybind for `:noautocmd MoltenEnterOutput` to open the output again
g.molten_auto_open_output = false

-- this guide will be using image.nvim
-- Don't forget to setup and install the plugin if you want to view image outputs
g.molten_image_provider = "image.nvim"

-- optional, I like wrapping. works for virt text and the output window
g.molten_wrap_output = true

-- Output as virtual text. Allows outputs to always be shown, works with images, but can
-- be buggy with longer images
g.molten_virt_text_output = true

-- this will make it so the output shows up below the \`\`\` cell delimiter
g.molten_virt_lines_off_by_1 = true
