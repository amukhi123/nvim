return {
    url = "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim", 
    },
    config = function()
        require("neogit").setup({
            kind = "floating",
            integrations = {
                diffview = true
            }
        })

        vim.keymap.set("n", "<C-n>", ":Neogit<CR>", {silent = true})
    end
}
