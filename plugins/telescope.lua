return {
    url = "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require("telescope").setup({
            defaults = {
                layout_config = {
                    horizontal = {
                        preview_cutoff = 0
                    }
                }
            }
        })

        vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>", {silent = true})
        vim.keymap.set("n", "<C-F>", ":Telescope live_grep<CR>", {silent = true})

        vim.api.nvim_create_autocmd("User", {
            pattern = "TelescopePreviewerLoaded",
            callback = function(args)
                vim.wo.wrap = true
            end
        })
    end
}
