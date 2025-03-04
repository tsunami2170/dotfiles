return {
	"lambdalisue/fern.vim",
	dependencies = { "lambdalisue/fern-hijack.vim" },
	config = function()
		vim.g["fern#renderer"] = "default"
		vim.g["fern#default_hidden"] = 0
		vim.api.nvim_set_keymap("n", "<leader>e", ":Fern . -drawer -toggle<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<Backspace>", ":FernDo chdir:.. <CR>", { noremap = true, silent = true })
	end
}
