return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "jose-elias-alvarez/typescript.nvim",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local util = require("lspconfig.util")

	-- display errors
	vim.diagnostic.config({
	  virtual_text = {
		spacing = 4,
		source = "if_many",
	  },
	  float = {
		border = "rounded",
		source = "always",
		focusable = false,
		header = "",
		prefix = "",
	  },
	  signs = true,
	  underline = true,
	  update_in_insert = false,
	})
	-- Display error message more details with popup
	vim.api.nvim_create_autocmd("CursorHold", {
	  callback = function()
		vim.diagnostic.open_float(nil, {
		  focusable = false,
		  border = "rounded",
		  source = "always",
		})
	  end,
	})
	-- Display popup 0.3s after the cursor stops
	vim.o.updatetime = 300

    local on_attach = function(_, bufnr)
      local opts = { buffer = bufnr, noremap = true, silent = true }
	  -- jump to definition
      vim.keymap.set("n", "gd", ":Telescope lsp_definitions<CR>", opts)
	  -- display all references
      vim.keymap.set("n", "gr", ":Telescope lsp_references<CR>", opts)
	  -- display func/variable information
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	  -- remane in bulk
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	  -- display amendment proposal
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	  -- switch error display/hidden
      vim.keymap.set(
		"n",
		"<leader>dd",
		":LspDiagnosticsToggle<CR>",
		{ desc = "switch errors", buffer = bufnr }
	)
    end

	-- import basic functions
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
	-- import old encoding
	capabilities.offsetEncoding = { "utf-16" }
	-- delete unnecessary function
    if capabilities.general and capabilities.general.positionEncodings then
        capabilities.general.positionEncodings = nil
    end
	-- apply to all servers
    local servers = {
        clangd = {},
        bashls = {},
        pyright = {},
        solargraph = {},
        ts_ls = {
            cmd = { "typescript-language-server", "--stdio" },
            on_attach = on_attach,
            root_dir = util.root_pattern(
				"package.json",
				"tsconfig.json",
				"jsconfig.json",
				".git"
			),
        },
    }
    for server, opts in pairs(servers) do
      lspconfig[server].setup(vim.tbl_deep_extend("force", {
        on_attach = on_attach,
        capabilities = capabilities,
      }, opts))
    end

	-- switch error display/hidden
	vim.api.nvim_create_user_command("LspDiagnosticsToggle", function()
	  local current = vim.diagnostic.config().virtual_text
	  vim.diagnostic.config({
		virtual_text = not current,
		signs = not current,
		underline = not current,
	  })
	  print("LspDiagnosis: " .. (current and "hidden" or "display"))
	end, {})
	-- show text color for Unnecessary
	vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", {})
  end,
}
