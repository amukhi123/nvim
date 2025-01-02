return {
    url = "mfussenegger/nvim-dap",
    dependencies = {
    },
    config = function()
        vim.keymap.set("n", "<F9>", ":DapToggleBreakpoint<CR>", {silent = true})
        vim.keymap.set("n", "<F5>", ":DapContinue<CR>", {silent = true})

        vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
    end
}
