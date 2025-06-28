return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    view = {
      side = "left",
      width = 20,
    },
    update_focused_file = {
      enable = true,
    },
    renderer = {
      add_trailing = true,
      indent_markers = {
        enable = true,
      },
      icons = {
        show = {
          file = false,
          folder = false,
          folder_arrow = false,
          git = false,
        },
      },
    },
	filters = { dotfiles = true, },
  },
  config = function(_, opts)
    require("nvim-tree").setup(opts)
  end,
}
