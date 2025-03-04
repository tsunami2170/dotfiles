return {
	"shellRaining/hlchunk.nvim",
	enalbed = false,
	event = { "UIEnter" },
	config = function()
		require("hlchunk").setup({
			chunk = {
				enable = true,
				use_treesitter = true,
				style = { { fg = "#ffffff" } },
			},
			indent = {
				enable = false,
			},
			line_num = {
				enable = false,
			},
			blank = {
				enable = false,
			},
		})
	end,
}
