return {
    url = "neovim/nvim-lspconfig",
    dependencies = {
    },
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        require("lspconfig").clangd.setup ({
            capabilities = capabilities
        })

        vim.keymap.set("n", "<F12>", vim.lsp.buf.definition, {silent = true})
        vim.keymap.set("n", "<C-Space>", vim.lsp.buf.hover, {silent = true})
    end
}
