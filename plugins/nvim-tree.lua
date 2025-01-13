return {
    url = "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup({
            git = {
                enable = false
            }
        })

        vim.keymap.set("n", "<C-l>", ":NvimTreeOpen<CR>", {silent = true})
        vim.keymap.set("n", "<C-A-l>", ":NvimTreeClose<CR>", {silent = true})
    end
}
