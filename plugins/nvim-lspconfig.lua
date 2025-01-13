return {
    url = "neovim/nvim-lspconfig",
    dependencies = {
    },
    config = function()
        local lsp_config = require("lspconfig")

        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        lsp_config.clangd.setup ({
            autostart = false,
            capabilities = capabilities
        })

        lsp_config.lua_ls.setup ({
            autostart = false,
            capabilities = capabilities
        })

        lsp_config.pylsp.setup ({
            autostart = false,
            capabilities = capabilities
        })

        vim.keymap.set("n", "<F12>", vim.lsp.buf.definition, {silent = true})
        vim.keymap.set("n", "<C-Space>", vim.lsp.buf.hover, {silent = true})
    end
}
