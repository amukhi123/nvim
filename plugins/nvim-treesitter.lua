return {
    url = "nvim-treesitter/nvim-treesitter",
    dependencies = {
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "cpp", "lua", "markdown", "markdown_inline", "html"
            },
            highlight = {
                enable = true
            }
        })

        vim.wo.foldmethod = 'expr'
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.o.foldlevel = 100
    end
}
