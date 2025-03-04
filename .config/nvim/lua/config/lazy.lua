local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = { { import = "plugins" },},
  defaults = {
    lazy = false,
    version = "*",
  },
})
