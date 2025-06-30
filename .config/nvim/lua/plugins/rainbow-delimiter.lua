return
{
	"HiPhish/rainbow-delimiters.nvim",
	lazy = false,
	config = function()
	require('rainbow-delimiters.setup').setup {
	strategy = {
		-- default is analyzing all of file
		[""] = require("rainbow-delimiters").strategy.global,
		-- vimscript (old or large size files) is analyzing only visivle range
		vim = require("rainbow-delimiters").strategy["local"],
	},
	highlight = {
		-- Defined in config/autocmds.lua
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
