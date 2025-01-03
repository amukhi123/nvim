return {
    url = "hrsh7th/nvim-cmp",
    dependencies = {
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-vsnip",
        "hrsh7th/vim-vsnip"
    },
    config = function()
        local cmp = require("cmp")

        cmp.setup({
            snippet = {
                expand = function(args)
                    vim.fn["vsnip#anonymous"](args.body)
                end,
            },
            mapping = {
                ["<C-b>"] = function()
                    if cmp.visible() then
                        cmp.close()
                    else
                        cmp.complete()
                    end
                end,
                ["<Down>"] = function()
                    if cmp.visible() then
                        cmp.select_next_item()
                    end
                end,
                ["<Up>"] = function()
                    if cmp.visible() then
                        cmp.select_prev_item()
                    end
                end,
                ["<Right>"] = function()
                    if cmp.visible() then
                        cmp.confirm({select = true})
                    end
                end
            },
            sources = cmp.config.sources({
                {name = "nvim_lsp"},
                {name = "vsnip"}
            }, {
                {name = "buffer"}
            })
        })
    end
}
