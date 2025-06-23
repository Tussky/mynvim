local function set_indent(size)
  vim.bo.tabstop = size
  vim.bo.shiftwidth = size
  vim.bo.softtabstop = size
  vim.bo.expandtab = true
end

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'cs',
  callback = function()
    set_indent(4)
  end,
})
