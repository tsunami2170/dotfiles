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

        vim.diagnostic.config({
            virtual_text = false,
            signs = false,
            underline = false,
            update_in_insert = false,
        })

        local on_attach = function(_, bufnr)
            local opts = { buffer = bufnr, noremap = true, silent = true }
            vim.keymap.set("n", "gd", ":Telescope lsp_definitions<CR>", opts)
            vim.keymap.set("n", "gr", ":Telescope lsp_references<CR>", opts)
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
            vim.keymap.set("n", "<leader>dd", ":LspDiagnosticsToggle<CR>", { desc = "エラー表示の切り替え", buffer = bufnr })
        end

        local servers = {
            clangd = {},
            bashls = {},
            pyright = {},
            ts_ls = {
                on_attach = on_attach,
                root_dir = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
            },
        }

        for server, opts in pairs(servers) do
            lspconfig[server].setup(vim.tbl_deep_extend("force", { on_attach = on_attach, }, opts))
        end

        vim.api.nvim_create_user_command("LspDiagnosticsToggle", function()
            local current = vim.diagnostic.config().virtual_text
            vim.diagnostic.config({
                virtual_text = not current,
                signs = not current,
                underline = not current,
            })
            print("LSP診断: " .. (current and "非表示" or "表示"))
        end, {})
    end,
}
