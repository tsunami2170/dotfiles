return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local function cursor_position()
      local current_line = vim.fn.line(".")
      local total_lines = vim.fn.line("$")
      local current_col = vim.fn.col(".")
      local total_cols = #vim.fn.getline(".")
      return string.format("Ln %d/%d, Col %d/%d", current_line, total_lines, current_col, total_cols)
    end
    require("lualine").setup({
      options = {
        theme = "auto",
        section_separators = "",
        component_separators = "|",
        icons_enabled = false,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch"},
        lualine_c = { "filename" },
		lualine_x = {},
        lualine_y = { cursor_position },
        lualine_z = { "progress" },
      },
    })
  end,
}
