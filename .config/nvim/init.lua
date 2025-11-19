vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.number = true
vim.o.relativenumber = true
vim.o.numberwidth = 1
vim.o.mouse = 'a'
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.shiftwidth = 4
vim.o.softtabstop = -1
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.updatetime = 250
vim.o.timeoutlen = 250
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.cursorline = true
vim.o.confirm = true
vim.o.foldmethod = 'indent'
vim.o.foldenable = false
vim.o.fillchars = 'eob: '
vim.o.showtabline = 0
vim.o.laststatus = 3
vim.o.statusline = '%F%m%r %=%l:%v'
vim.o.clipboard = 'unnamedplus'
vim.opt.whichwrap:append '<>[]hl'
vim.opt.shortmess:append 'sAFIW'
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<M-h>', '<C-w><', { desc = 'Decrease window width' })
vim.keymap.set('n', '<M-l>', '<C-w>>', { desc = 'Increase window width' })
vim.keymap.set('n', '<M-k>', '<C-w>-', { desc = 'Decrease window height' })
vim.keymap.set('n', '<M-j>', '<C-w>+', { desc = 'Increase window height' })
vim.keymap.set('n', '<leader>j', '<cmd>bnext<CR>', { desc = 'Go to next buffer' })
vim.keymap.set('n', '<leader>k', '<cmd>bprevious<CR>', { desc = 'Go to previous buffer' })
vim.keymap.set('n', '<leader><leader>', '<cmd>buffer #<CR>', { desc = 'Go to last buffer' })
vim.keymap.set('n', '<leader>d', '<cmd>bprevious | bdelete #<CR>', { desc = '[D]elete buffer' })
vim.keymap.set('n', '<leader>w', '<cmd>bprevious | bwipeout #<CR>', { desc = '[W]ipe out buffer' })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Stop highlight search' })
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight-on-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua' },
  group = vim.api.nvim_create_augroup('indent-file', { clear = true }),
  callback = function()
    vim.o.shiftwidth = 2
  end,
})
vim.cmd([[colorscheme wildcharm]])
