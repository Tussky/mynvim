return {
	-- auto bracket pairs
	{
		'windwp/nvim-autopairs',
		event = 'InsertEnter',
		config = true,
	},	
	{
		'lukas-reineke/indent-blankline.nvim',
		main = 'ibl',
		opts = {}
	}

}
