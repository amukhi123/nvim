return {
    url = "wfxr/minimap.vim",
    dependencies = {
    },
    config = function()
        vim.g.minimap_width = 5
        vim.g.minimap_auto_start = 1
        vim.g.minimap_auto_start_win_enter = 1
    end
}
