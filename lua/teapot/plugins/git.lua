return {
	-- vim fugitive
	{ "tpope/vim-fugitive", },
	-- git signs
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signcolumn = true, 
			numhl = true,
			-- linehl = true,
		},
		dependencies = { "nvim-lua/plenary.nvim" },
	},
}
