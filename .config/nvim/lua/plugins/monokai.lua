return {
  'loctvl842/monokai-pro.nvim',
  priority = 1000,
  config = function()
    require("monokai-pro").setup({
      transparent_background = true,
      override = function(scheme)
        return {
          StatusLineTerm = {
            bg = scheme.statusBar.background,
            fg = scheme.statusBar.activeForeground,
          },
          StatusLineTermNC = {
            bg = scheme.statusBar.background,
            fg = scheme.statusBar.foreground,
          },
        }
      end,
    })
    vim.cmd([[colorscheme monokai-pro-classic]])
  end,
}
