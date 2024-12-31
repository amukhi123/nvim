return {
    url = "mfussenegger/nvim-dap",
    dependencies = {
    },
    config = function()
        local dap = require("dap")
        
        local dapui = require("dapui")

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end

        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end

        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        vim.keymap.set("n", "<F9>", ":DapToggleBreakpoint<CR>", {silent = true})
        vim.keymap.set("n", "<F5>", ":DapContinue<CR>", {silent = true})

        vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
    end
}
