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
                ensure_installed = { "lua_ls", "bashls", "fortls", "julials", "marksman", "pylsp", "gopls" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilites = capabilities,
            })
            lspconfig.fortls.setup({
                capabilites = capabilities,
            })
            lspconfig.bashls.setup({
                capabilites = capabilities,
            })
            lspconfig.julials.setup({
                capabilites = capabilities,
            })
            lspconfig.pylsp.setup({
                capabilites = capabilities,
            })
            lspconfig.gopls.setup({
                capabilites = capabilities,
            })
            lspconfig.typst.setup({
                capabilites = capabilities,
            })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
