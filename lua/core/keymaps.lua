vim.g.mapleader = " "
local keymap = vim.keymap

-- press 'jk' to escape insert mode
keymap.set("n", "<leader>jk", "<ESC>", {desc = "Exit insert mode using jk"})


