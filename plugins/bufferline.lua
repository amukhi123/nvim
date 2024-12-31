return {
    url = "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        vim.opt.termguicolors = true

        require("bufferline").setup()

        vim.keymap.set("n", "<C-]>", ":bnext<CR>", {silent = true})
        vim.keymap.set("n", "<C-[>", ":bprev<CR>", {silent = true})
    end
}
