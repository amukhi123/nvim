return {
    url = "rcarriga/nvim-dap-ui",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "mfussenegger/nvim-dap"
    },
    config = function()
        local dapui = require("dapui")

        dapui.setup({
            layouts = {
                {
                    elements = {
                        {
                            id = "scopes",
                            size = 0.25
                        },
                        { 
                            id = "watches", 
                            size = 0.25 
                        }
                    },
                    size = 40,
                    position = "left"
                },
                {
                    elements = {
                        "console",
                    },
                    size = 40,
                    position = "bottom"
                },
            }
        })

        local dap = require("dap")

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
    end
}
