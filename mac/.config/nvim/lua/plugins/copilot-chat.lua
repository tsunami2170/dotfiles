return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    config = function()
      require("CopilotChat").setup({
        debug = false
      })

      vim.api.nvim_create_autocmd("BufWinEnter", {
        pattern = "copilot-chat-*",
        callback = function()
          vim.bo.modifiable = true
        end,
      })

      vim.api.nvim_create_user_command("CC", function()
        require("CopilotChat").open({})
      end, {})
    end,
  },
}
