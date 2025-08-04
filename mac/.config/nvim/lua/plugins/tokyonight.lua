return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = true, 
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_colors = function(colors)
        colors.bg = "#212121"
        colors.fg = "#FFFFFF"
        colors.comment = "#51c8e0"
      end,
      
      on_highlights = function(hl, c)
		-- For transparent background
		-- active
        hl.Normal = { bg = "NONE", ctermbg = "NONE" }
		-- non-active
        hl.NormalNC = { bg = "NONE", ctermbg = "NONE" }
		-- tree
        hl.NvimTreeNormal = { bg = "NONE", ctermbg = "NONE" }
		
        -- line number color
        hl.LineNr = { fg = "#a7abc9" }

        -- separator color
		hl.NvimTreeWinSeparator = { fg = "#8896c2", bg = "NONE" }
        
        -- selected background color
        hl.Visual = { bg = "#7878ab" }

        hl.RainbowDelimiterRed      = { fg = "#d65a5a" }
        hl.RainbowDelimiterYellow   = { fg = "#3d9c36" }
        hl.RainbowDelimiterBlue     = { fg = "#4cacba" }
        hl.RainbowDelimiterOrange   = { fg = "#dbd965" }
        hl.RainbowDelimiterGreen    = { fg = "#9a4fc2" }
        hl.RainbowDelimiterViolet   = { fg = "#ed7842" }
        hl.RainbowDelimiterCyan     = { fg = "#1832b8" }
      end,
    })

    vim.cmd("colorscheme tokyonight")
  end,
}
