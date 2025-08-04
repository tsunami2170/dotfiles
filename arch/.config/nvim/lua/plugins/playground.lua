-- ~/.config/nvim/lua/plugins/treesitter-playground.lua

return {
  "nvim-treesitter/playground",
  cmd = { "TSPlaygroundToggle", "TSHighlightCapturesUnderCursor" },
  config = function()
    vim.keymap.set("n", "<leader>tp", "<cmd>TSPlaygroundToggle<CR>", { desc = "Toggle TS Playground" })
  end,
}
