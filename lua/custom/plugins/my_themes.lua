return {
  {
    'rose-pine/nvim',
    name = 'rose-pine',
    config = function()
      vim.cmd 'colorscheme rose-pine'
    end,
  },

  {
    { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  },
}
