-- search files
return
{
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = "Telescope",
	keys = {
		-- search files in the project
		{ "<leader>ff", function() vim.cmd("Telescope find_files") end, desc = "Find files" },
		-- search text in the project
		{ "<leader>fg", function() vim.cmd("Telescope live_grep") end, desc = "Search text in project" },
		-- search opening buffer
		{ "<leader>fb", function() vim.cmd("Telescope buffers") end, desc = "List open buffers" },
		-- jump to definition
		{ "<leader>fd", function() vim.lsp.buf.definition() end, desc = "Go to definition" },
		-- display information on hover
		{ "<leader>fh", function() vim.lsp.buf.hover() end, desc = "Show variable definition" },
		-- display references
		{ "<leader>fr", function() vim.cmd("Telescope lsp_references") end, desc = "Find references" },
		-- -- -- -- -- -- -- -- -- -- -- -- --
		-- not used
		{ "<leader>fs", function() vim.cmd("Telescope lsp_document_symbols") end, desc = "Find document symbols" },
		{ "<leader>fw", function() vim.cmd("Telescope lsp_workspace_symbols") end, desc = "Find workspace symbols" },
		-- search nvim plugin
		{ "<leader>fp",
		  function()
		    require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
		  end,
		  desc = "Find plugin files",
		},
	},
	-- design
	opts = {
		defaults = {
			layout_strategy = "horizontal",
			layout_config = { prompt_position = "top" },
			sorting_strategy = "ascending",
			winblend = 0,
		},
	},
}
