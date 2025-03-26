return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    view = {
      side = "left",  -- 左側に表示
      width = 20,     -- 幅の指定
    },
    update_focused_file = {
      enable = true,  -- カレントファイルを自動でハイライト
    },
    renderer = {
      add_trailing = true, -- ディレクトリの末尾に `/` を追加
      indent_markers = {
        enable = true,  -- ツリーのインデントマーカーを有効化
      },
      icons = {
        show = {
          file = false,       -- ファイルアイコンを非表示
          folder = false,     -- フォルダアイコンを非表示
          folder_arrow = false, -- フォルダ展開アイコンを非表示
          git = false,        -- Gitステータスアイコンを非表示
        },
      },
    },
	filters = { dotfiles = true, },
  },
  config = function(_, opts)
    require("nvim-tree").setup(opts)
  end,
}
