vim.opt.number = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.wrap = true

vim.opt.clipboard:append("unnamedplus")

vim.opt.mouse = "a"

-- Mofify this based on where your nvim directory is
local plugin_directory = "C:\\Users\\Aqil\\AppData\\Local\\nvim"

package.path = package.path .. ";" .. plugin_directory .. "/?.lua"

local module_names = {"bufferline", "nvim-cmp", "nvim-lspconfig", "mason", "mason-lspconfig", "mason-nvim-dap", "nord", "nvim-dap-ui", "nvim-dap", "nvim-tree", "telescope", "toggleterm"}

vim.call("plug#begin")

for _, value in ipairs(module_names) do
    local module = require("plugins." .. value)

    for _, dependency in pairs(module.dependencies) do
        vim.cmd("Plug " .. "'" .. dependency .. "'")
    end

    vim.cmd("Plug " .. "'" .. module.url .. "'")
end

vim.call("plug#end")

for _, value in ipairs(module_names) do
    local module = require("plugins." .. value)

    module.config()
end

vim.cmd("colorscheme nord")

local powershell_options = {
    shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
    shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
    shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
    shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
    shellquote = "",
    shellxquote = ""
}

for option, value in pairs(powershell_options) do
    vim.opt[option] = value
end
