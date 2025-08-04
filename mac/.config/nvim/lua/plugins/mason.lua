-- auto import neccesary packages
return 
{
	"williamboman/mason.nvim",
	build = ":MasonUpdate",
	opts = {
		ensure_installed = {
			"clangd",
			"corelldb",
			"clang-format",
			"bash-language-server",
			"shfmt",
			"shellcheck",
			"lua-language-server",
			"stylua",
			"flake8",
		},
	},
}
