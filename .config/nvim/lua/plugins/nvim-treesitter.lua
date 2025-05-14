return
{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = { "HiPhish/rainbow-delimiters.nvim", },
	opts = function(_, opts)
	opts.ensure_installed = opts.ensure_installed or {}
	opts.highlight = { enable = true, additional_vim_regex_highlighting = false }
	opts.indent = { enable = true }
	vim.list_extend(opts.ensure_installed, {
	  "bash",
	  "sh",
	  "zsh",
	  "c",
	  "cpp",
	  "python",
	  "swift",
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
	})
	end,
}
