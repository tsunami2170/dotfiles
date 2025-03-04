return 
{
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
	require("tokyonight").setup({
		style = "night",
		on_colors = function(colors)
			colors.bg = "#212121"
			colors.fg = "#FFFFFF"
			colors.comment = "#51c8e0"
		end,
		on_highlights = function(hl, c)
			hl.RainbowDelimiterRed		= { fg = "#d65a5a" }
			hl.RainbowDelimiterYellow	= { fg = "#3d9c36" }
			hl.RainbowDelimiterBlue		= { fg = "#4cacba" }
			hl.RainbowDelimiterOrange	= { fg = "#dbd965" }
			hl.RainbowDelimiterGreen	= { fg = "#9a4fc2" }
			hl.RainbowDelimiterViolet	= { fg = "#ed7842" }
			hl.RainbowDelimiterCyan		= { fg = "#1832b8" }
			hl.Visual					= { bg = "#7878ab" }
		end,
	})
	vim.cmd("colorscheme tokyonight")
	end,
}
