return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = false,
    },
    formatters_by_ft = {
      go = { "gofmt" },
	  cpp = { "clang-format" },
    },
  },
}
