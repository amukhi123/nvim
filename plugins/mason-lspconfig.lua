return {
    url = "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig"
    },
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {"clangd", "lua_ls", "pylsp"},
        })
    end
}
