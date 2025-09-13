vim.g.mapleader = " "
-- core functionality in seperate files
require('teapot.core.options')
require('teapot.core.keymaps')
require('teapot.plugins')
-- plugin manager
require('teapot.lazy')
-- applying theme
vim.o.termguicolors = true
vim.cmd("colorscheme gruvbox")
