return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  config = function()
    require("copilot").setup({
	  -- Disable auto suggestion
      suggestion = {enabled = false},
	  -- do not use panel (use copilot chat)
      panel = {enabled = true},
    })
  end,
}
