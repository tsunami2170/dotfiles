-- color scheme
vim.cmd("colorscheme tokyonight")
vim.cmd("highlight ColorColumn ctermbg=8 guibg=#333333")

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.cmd([[
  highlight RainbowDelimiterRed		guifg=#d65a5a
  highlight RainbowDelimiterYellow	guifg=#3d9c36
  highlight RainbowDelimiterBlue	guifg=#4cacba
  highlight RainbowDelimiterOrange	guifg=#dbd965
  highlight RainbowDelimiterGreen	guifg=#9a4fc2
  highlight RainbowDelimiterViolet	guifg=#ed7842
  highlight RainbowDelimiterCyan	guifg=#1832b8
    ]])
  end,
})

vim.cmd([[
  highlight RainbowDelimiterRed		guifg=#d65a5a
  highlight RainbowDelimiterYellow	guifg=#3d9c36
  highlight RainbowDelimiterBlue	guifg=#4cacba
  highlight RainbowDelimiterOrange	guifg=#dbd965
  highlight RainbowDelimiterGreen	guifg=#9a4fc2
  highlight RainbowDelimiterViolet	guifg=#ed7842
  highlight RainbowDelimiterCyan	guifg=#1832b8
]])

