return {
    url = "williamboman/mason.nvim",
    dependencies = {
    },
    config = function()
        require("mason").setup({
            ui = {
                border = "rounded"
            }
        })
    end
}
