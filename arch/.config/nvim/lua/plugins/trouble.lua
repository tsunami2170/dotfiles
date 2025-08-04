return
{
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "<leader>xx", ":TroubleToggle<CR>", desc = "Show LSP diagnostics list" },
		{ "<leader>xw", ":TroubleToggle workspace_diagnostics<CR>", desc = "Show workspace diagnostics" },
		{ "<leader>xd", ":TroubleToggle document_diagnostics<CR>", desc = "Show document diagnostics" },
		{ "<leader>xq", ":TroubleToggle quickfix<CR>", desc = "Open Quickfix" },
	},
	config = function()
		require("trouble").setup({})
	end,
}
