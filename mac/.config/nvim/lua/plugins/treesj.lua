-- split or join code blocks
return
{
	"Wansmer/treesj",
	keys = {
		{ "<leader>m", "<cmd>TSJToggle<CR>", desc = "Toggle TreeSJ" },
	},
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
	require("treesj").setup({
		-- use original keymap
		use_default_keymaps = false,
		-- join blocks within 200 characters
		max_join_length = 200,
	})
	end,
}
