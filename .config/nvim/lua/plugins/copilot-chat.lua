return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    config = function()
      require("CopilotChat").setup({
        debug = true,
      })

      -- ✅ CopilotChatバッファが読み取り専用になる問題を防ぐ
      vim.api.nvim_create_autocmd("BufWinEnter", {
        pattern = "copilot-chat-*",
        callback = function()
          vim.bo.modifiable = true
        end,
      })

      -- :CC コマンドの登録（任意）
      vim.api.nvim_create_user_command("CC", function()
        require("CopilotChat").open({})
      end, {})
    end,
  },
}
