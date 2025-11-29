vim.g.mapleader = " "
-- core functionality in seperate files
require('teapot.core.options') -- customisations
require('teapot.core.keymaps') -- keymaps
require('teapot.core.pretty')  -- sytlistic changes
require('teapot.plugins') -- lazy plugins
-- plugin manager
require('teapot.lazy')
-- applying theme
vim.o.termguicolors = true
vim.opt.cursorline = true
vim.cmd("colorscheme gruvbox")


-- start a lsp client and attach client to buffer
vim.lsp.start_client({
	name = "my-server",
	cmd = {'lua-language-server'},
	root_dir = vim.fs.dirname(vim.fs.find({'.git', 'pyproject.toml', 'setup.py'}, {upward = true})[1])
})
-- configure how the lsp client is displaying your text
vim.diagnostic.config({
	virtual_text = true,
	signs = true, 
	underline = true,
	update_in_insert = true,
})

-- toggle how the lsp is displaying text
toggle = true -- start by defining the toggle
function toggle_lsp()
	vim.diagnostic.config({
		virtual_text = toggle,
		signs = toggle, 
		underline = toggle,
		update_in_insert = toggle,
	})
	toggle = not toggle
	print(toggle)
end
	toggle_lsp()
-- my aliases
vim.api.nvim_create_user_command('Ox', 'Oil --float', {desc = "Open file tree with oil in floating window."})


-- VIMTEX keybindings
vim.api.nvim_create_autocmd('FileType', {
	pattern = "tex",
	callback = function()
		vim.keymap.set('i', '<C-.>', '\\', {buffer = true, desc = 'Insert Backslash'})
		vim.keymap.set('n', '<leader>l', ':VimtexCompile<CR>', { desc = "Compile Latex" })
	end,
})
