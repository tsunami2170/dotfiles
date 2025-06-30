-- one column limits
vim.cmd("highlight ColorColumn ctermbg=8 guibg=#333333")
-- color of number
vim.cmd([[highlight LineNr guifg=#ffffff]])

-- setting for sepatator 
vim.api.nvim_create_autocmd("UIEnter", {
  once = true,
  callback = function()
    vim.opt.fillchars = "vert:⋮"
	vim.opt.fillchars:append({ eob = " " })
  end,
})
