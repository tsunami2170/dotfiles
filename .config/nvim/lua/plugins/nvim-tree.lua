-- Sidebar for files

local show_dotfiles = false

return {
  "nvim-tree/nvim-tree.lua",
  opts = function()
    return {
      view = {
        side = "left",
        width = 20,
      },
      update_focused_file = {
        enable = true,
      },
      renderer = {
		-- add slash to directories
        add_trailing = true,
		-- show indentation for nested directories
        indent_markers = {
          enable = true,
        },
		-- do not show icons
        icons = {
          show = {
            file = false,
            folder = false,
            folder_arrow = false,
            git = false,
          },
        },
      },
	  -- do not show secret files by default
      filters = {
        dotfiles = true,
      },
    }
  end,
  -- For visivility of secret files
  config = function(_, opts)
    local nvim_tree = require("nvim-tree")
    local api = require("nvim-tree.api")
    local view = require("nvim-tree.view")
    nvim_tree.setup(opts)

    vim.keymap.set("n", "<leader>h", function()
      show_dotfiles = not show_dotfiles

      local new_opts = vim.deepcopy(opts)
      new_opts.filters.dotfiles = not show_dotfiles

      view.close()
      nvim_tree.setup(new_opts)
      api.tree.open()
    end, { desc = "Toggle dotfiles in nvim-tree" })
  end,
}
