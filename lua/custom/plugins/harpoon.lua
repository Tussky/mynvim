-- harpoon installation
return {
  'Theprimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { { 'nvim-lua/plenary.nvim' } },
  config = function()
    require('harpoon'):setup()
  end,
  keys = {
    {
      '<C-e>',
      function()
        local harpoon = require 'harpoon'
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = 'harpoon quick menu',
    },
    {
      '<leader>a',
      function()
        require('harpoon'):list():add()
      end,
      desc = 'harpoon file',
    },
  },
}
