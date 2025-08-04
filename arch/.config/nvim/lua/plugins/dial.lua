-- increase/decrease blocks(num, bool, data)
return
{
	"monaqa/dial.nvim",
	lazy = false,
	keys = {
		-- increase/decrease one block
		{	"<C-a>", 
			function() require("dial.map").inc_normal() end, 
			mode = "n",
			desc = "Increment" },
		{	"<C-x>",
			function() require("dial.map").dec_normal() end,
			mode = "n",
			desc = "Decrement" },
		-- increase/decrease selected blocks
		{	"g<C-a>", 
			function() require("dial.map").inc_visual() end,
			mode = "v",
			desc = "Increment (Visual)" },
		{
			"g<C-x>",
			function() require("dial.map").dec_visual() end,
			mode = "v",
			desc = "Decrement (Visual)",
		},
	},
	config = function()
	local augend = require("dial.augend")
	require("dial.config").augends:register_group{
		default = {
			augend.integer.new({ min = -2147483648, max = 2147483647, signed = true, wrap = false }),
			augend.integer.alias.hex,
			augend.date.alias["%Y/%m/%d"],
			augend.constant.alias.bool,
		},
	}
	vim.api.nvim_set_keymap("n", "<C-a>", "<Plug>(dial-increment)", { noremap = false })
	vim.api.nvim_set_keymap("n", "<C-x>", "<Plug>(dial-decrement)", { noremap = false })
	vim.api.nvim_set_keymap("v", "g<C-a>", "<Plug>(dial-increment)", { noremap = false })
	vim.api.nvim_set_keymap("v", "g<C-x>", "<Plug>(dial-decrement)", { noremap = false })
	end,
}
