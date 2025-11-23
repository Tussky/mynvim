vim.lsp.config['lua-ls'] = {
	cmd = { "lua_language-server" },
  filetypes = { "lua" },
	root_markers = { {'.luarc', '.luarc.jsonc'}, '.git'}
}

vim.lsp.enable("lua_ls")
