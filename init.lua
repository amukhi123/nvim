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

local module_install_order = {"bufferline", "diffview", "mason", "nvim-lspconfig", "mason-lspconfig", "nord", "nvim-cmp", "nvim-dap", "mason-nvim-dap", "nvim-dap-ui", "nvim-tree", "telescope", "toggleterm"}

vim.call("plug#begin")

for _, value in ipairs(module_install_order) do

    local module = require("plugins." .. value)

    for _, dependency in pairs(module.dependencies) do
        vim.cmd("Plug " .. "'" .. dependency .. "'")
    end

    vim.cmd("Plug " .. "'" .. module.url .. "'")
end

vim.call("plug#end")

local module_config_order = {"bufferline", "diffview", "mason", "mason-lspconfig", "nvim-lspconfig", "mason-nvim-dap", "nord", "nvim-cmp", "nvim-dap-ui", "nvim-dap", "nvim-tree", "telescope", "toggleterm"}

for _, value in ipairs(module_config_order) do
    
    local module = require("plugins." .. value)

    module.config()
end

vim.cmd("colorscheme nord")

local powershell_options = {
    shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
    shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
    shellredir = "-NoNewWindow -Wait",
    shellpipe = "2>&1",
    shellquote = "",
    shellxquote = ""
}

for option, value in pairs(powershell_options) do
    vim.opt[option] = value
end

vim.keymap.set("n", "<C-k>", ":silent !explorer %:p:h<CR>", {silent = true})
