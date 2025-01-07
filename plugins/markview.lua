return {
    url = "OXY2DEV/markview.nvim",
    dependencies = {
    },
    config = function()
        require("markview").setup({
            initial_state = false
        })
    end
}
