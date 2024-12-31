return {
    url = "akinsho/toggleterm.nvim",
    dependencies = {
    },
    config = function()
        require("toggleterm").setup({
            size = 20,
            open_mapping = [[<c-\>]],
            shell = vim.o.shell,
            direction = "float",
            float_ops = {
                border = "curved"
            }
        })
    end
}
