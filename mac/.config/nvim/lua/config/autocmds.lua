-- one column limits
vim.cmd("highlight ColorColumn ctermbg=8 guibg=#333333")
-- color of number
vim.cmd([[highlight LineNr guifg=#ffffff]])
-- color of separator
vim.cmd ([[highlight WinSeparator guifg=#8896c2]])

-- setting for sepatator 
-- vim.api.nvim_create_autocmd("UIEnter", {
--   once = true,
--   callback = function()
--     vim.opt.fillchars = "vert:⋮"
-- 	vim.opt.fillchars:append({ eob = " " })
--   end,
-- })

-- highlight large space
vim.cmd([[
  highlight ZenkakuSpace guibg=#FFFFAA
  match ZenkakuSpace /　/  
]])
