return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = 'VeryLazy',
  config = function()
    local parsers = { 'vim', 'vimdoc', 'lua', 'markdown', 'bash', 'javascript', 'html', 'css', 'java' }
    require('nvim-treesitter').install(parsers)
  end,
}
