return {
  {
    'rose-pine/nvim',
    name = 'rose-pine',
    config = function()
      vim.cmd 'colorscheme rose-pine'
    end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    name = 'gruvbox',
    config = function()
      vim.cmd 'colorscheme gruvbox'
    end,
  },
  {
    { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  },
}
