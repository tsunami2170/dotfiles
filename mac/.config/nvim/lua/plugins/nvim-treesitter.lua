-- syntax highlight/indent
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed or {}
    opts.highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    }
    opts.indent = { enable = true }
    opts.endwise = { enable = true }
    vim.list_extend(opts.ensure_installed, {
      "bash",
      "c",
      "cpp",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "tsx",
      "typescript",
      "vim",
      "yaml",
	  "ruby",
    })
  end,
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
