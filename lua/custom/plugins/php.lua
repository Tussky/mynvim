-- plugins/php.lua
return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              stubs = {
                'wordpress',
                'woocommerce',
                'php',
                'json',
                'curl',
                'date',
                'dom',
                'filter',
                'hash',
                'libxml',
                'mbstring',
                'openssl',
                'pcre',
                'spl',
                'standard',
                'xml',
              },
              environment = {
                includePaths = {
                  vim.fn.expand 'wp-stubs', -- ← path to WordPress stubs
                },
              },
              files = {
                maxSize = 5000000,
              },
            },
          },
        },
      },
    },
  },
}
