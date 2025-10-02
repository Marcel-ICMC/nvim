return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "elixirls" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            vim.lsp.config('lua_ls', {
                capabilities = capabilities
            })
            vim.lsp.config('clangd', {
                cmd = {
                    "clangd",
                    "--fallback-style=webkit",
                },
              capabilities = capabilities
            })

            vim.lsp.config('elixirls', {
                cmd = { vim.fn.expand("~") .. "/elixir_ls/language_server.sh" },
                capabilities = capabilities
            })

            vim.lsp.enable('elixirls')

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
