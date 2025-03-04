return
{
	"HiPhish/rainbow-delimiters.nvim",
	lazy = false,
	config = function()
	require('rainbow-delimiters.setup').setup {
	strategy = {
		[""] = require("rainbow-delimiters").strategy.global,
		vim = require("rainbow-delimiters").strategy["local"],
	},
	highlight = {
		"RainbowDelimiterRed",
		"RainbowDelimiterYellow",
		"RainbowDelimiterBlue",
		"RainbowDelimiterOrange",
		"RainbowDelimiterGreen",
		"RainbowDelimiterViolet",
		"RainbowDelimiterCyan",
	  },
	}
	end,
}
