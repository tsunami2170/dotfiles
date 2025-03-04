return
{
	"Wansmer/treesj",
	keys = {
		{ "<leader>m", "<cmd>TSJToggle<CR>", desc = "Toggle TreeSJ" },
	},
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
	require("treesj").setup({
		use_default_keymaps = false,
		max_join_length = 400,
	})
	end,
}
