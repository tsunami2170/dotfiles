-- Setting Variables
local map = vim.keymap.set

-- Turn off search highlight
map("n", "<ESC><ESC>", ":nohlsearch<CR>", { desc = "Remove search highlight" })

-- Change window size
map("n", "<C-l>", "<C-w>>", { desc = "Increase window width" })
map("n", "<C-h>", "<C-w><", { desc = "Decrease window width" })

-- Move to both ends of the line
map("n", "<S-h>", "0", { desc = "Move to beginning of line" })
map("n", "<S-l>", "$", { desc = "Move to end of line" })

-- Move cursor in insert mode
map("i", "<C-j>", "<Down>", { desc = "Move cursor down", silent = true })
map("i", "<C-k>", "<Up>", { desc = "Move cursor up", silent = true })
map("i", "<C-h>", "<Left>", { desc = "Move cursor left", silent = true })
map("i", "<C-l>", "<Right>", { desc = "Move cursor right", silent = true })
map("i", "<C-w>", "<Home>", { desc = "Move to start of line" })
map("i", "<C-e>", "<End>", { desc = "Move to end of line" })

-- Move window 
map("n", "<A-h>", "<C-w>h", { silent = true })
map("n", "<A-j>", "<C-w>j", { silent = true })
map("n", "<A-k>", "<C-w>k", { silent = true })
map("n", "<A-l>", "<C-w>l", { silent = true })

-- Setting for filer
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree", silent = true })
map("n", "<leader><Enter>", ":lua require('nvim-tree.api').node.open.tab()<CR>", { desc = "Open in NvimTree new tab", silent = true })

-- Setting for Rubocop
vim.keymap.set("n", "<leader>ru", function()
  vim.cmd("!rubocop -A %")
  vim.cmd("edit!")
end, { desc = "Rubocop auto-correct current file" })
