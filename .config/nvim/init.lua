vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.options")
require("config.keymaps")
require("config.lazy")
require("config.autocmds")


vim.api.nvim_set_hl(0, "RainbowDelimiterRed",    { fg = "#E06C75" }) -- 赤
vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = "#E5C07B" }) -- 黄
vim.api.nvim_set_hl(0, "RainbowDelimiterBlue",   { fg = "#61AFEF" }) -- 青
vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#D19A66" }) -- オレンジ
vim.api.nvim_set_hl(0, "RainbowDelimiterGreen",  { fg = "#98C379" }) -- 緑
vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", { fg = "#C678DD" }) -- 紫
vim.api.nvim_set_hl(0, "RainbowDelimiterCyan",   { fg = "#56B6C2" }) -- シアン
