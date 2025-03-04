return
{
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = "Telescope",
	keys = {
		{ "<leader>ff", function() vim.cmd("Telescope find_files") end, desc = "Find files" },
		{ "<leader>fg", function() vim.cmd("Telescope live_grep") end, desc = "Search text in project" },
		{ "<leader>fb", function() vim.cmd("Telescope buffers") end, desc = "List open buffers" },
		{ "<leader>fs", function() vim.cmd("Telescope lsp_document_symbols") end, desc = "Find document symbols" },
		{ "<leader>fw", function() vim.cmd("Telescope lsp_workspace_symbols") end, desc = "Find workspace symbols" },
		{ "<leader>fd", function() vim.lsp.buf.definition() end, desc = "Go to definition" },
		{ "<leader>fh", function() vim.lsp.buf.hover() end, desc = "Show variable definition" },
		{ "<leader>fr", function() vim.cmd("Telescope lsp_references") end, desc = "Find references" },
		{ "<leader>fp",
		  function()
		    require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
		  end,
		  desc = "Find plugin files",
		},
	},
	opts = {
		defaults = {
			layout_strategy = "horizontal",
			layout_config = { prompt_position = "top" },
			sorting_strategy = "ascending",
			winblend = 0,
		},
	},
}

