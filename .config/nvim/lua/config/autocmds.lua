vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.hl.on_yank()
  end,
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua' },
  callback = function()
    vim.o.shiftwidth = 2
  end,
})
vim.api.nvim_create_autocmd('FileType', {
  callback = function()
    vim.treesitter.stop()
  end,
})
