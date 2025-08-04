return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/vim-vsnip",
    "hrsh7th/cmp-vsnip",
    "zbirenbaum/copilot-cmp",
  },
  config = function()
    require("copilot_cmp").setup()

    local cmp = require("cmp")
    cmp.setup({
	  -- select func for expand completions
      snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body)
        end,
      },
	  -- disable auto completion
      completion = {
        autocomplete = false,
      },
      mapping = cmp.mapping.preset.insert({
		-- display completions and go next
        ["<C-'>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          else
            cmp.complete()
          end
        end, { "i", "s" }),
		-- go back
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
		-- confirm
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
	  -- completions priority
      sources = cmp.config.sources({
        { name = "copilot" },
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "vsnip" },
      }),
    })
  end,
}
