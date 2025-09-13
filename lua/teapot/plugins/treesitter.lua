return {
	'nvim-treesitter/nvim-treesitter',
	-- build = ':TSUpdate',
	config = function()
		require('nvim-treesitter.configs').setup {
			ensure_installed = { 'rust', 'java', 'python', 'bash', 'c_sharp' },
			highlight = { enable = true },
		}
	end,
}
