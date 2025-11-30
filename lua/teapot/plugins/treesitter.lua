return {
	'nvim-treesitter/nvim-treesitter',
	-- build = ':TSUpdate',
	config = function()
		require('nvim-treesitter.configs').setup {
			ensure_installed = { 'rust', 'java', 'python', 'bash', 'c_sharp', 'lua' },
			highlight = { enable = true },
		}
	end,
}
