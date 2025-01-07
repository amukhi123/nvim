return {
    url = "williamboman/mason.nvim",
    dependencies = {
    },
    config = function()
        require("mason").setup({
            ensure_installed = {"clangd", "lua_ls"},
            ui = {
                border = "rounded"
            }
        })
    end
}
