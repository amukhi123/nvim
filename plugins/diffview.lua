return {
    url = "sindrets/diffview.nvim",
    dependencies = {
    },
    config = function()
        vim.keymap.set("n", "<C-d>", ":DiffviewOpen<CR>", {silent = true})
        vim.keymap.set("n", "<C-A-d>", ":DiffviewClose<CR>", {silent = true})
        vim.keymap.set("n", "<C-g>", ":DiffviewToggle<CR>", {silent = true})
    end
}
