vim.opt.number = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.wrap = true

vim.opt.clipboard:append("unnamedplus")

vim.opt.mouse = "a"

-- Mofify this based on where your nvim directory is
local username = os.getenv("USERPROFILE")

local plugin_directory = username .. "\\AppData\\Local\\nvim"

package.path = package.path .. ";" .. plugin_directory .. "/?.lua"

local plugin_install_order = {"bufferline", "diffview", "nord", "markview", "nvim-tree", "nvim-treesitter", "scrollview", "telescope", "toggleterm"}

if vim.g.ide ~= nil then
    local ide_plugins = {"mason", "nvim-lspconfig", "mason-lspconfig", "neogit", "nvim-cmp", "nvim-dap", "mason-nvim-dap", "nvim-dap-ui"}

    for _, value in ipairs(ide_plugins) do
        table.insert(plugin_install_order, value) 
    end
end

vim.call("plug#begin")

for _, value in ipairs(plugin_install_order) do

    local module = require("plugins." .. value)

    for _, dependency in pairs(module.dependencies) do
        vim.cmd("Plug " .. "'" .. dependency .. "'")
    end

    vim.cmd("Plug " .. "'" .. module.url .. "'")
end

vim.call("plug#end")

vim.cmd("colorscheme nord")

local plugin_config_order = {"bufferline", "diffview", "nord", "markview", "nvim-tree", "nvim-treesitter", "scrollview", "telescope", "toggleterm"}

if vim.g.ide ~= nil then
    local ide_plugins = {"mason", "nvim-lspconfig", "mason-lspconfig", "neogit", "nvim-cmp", "nvim-dap", "mason-nvim-dap", "nvim-dap-ui"}

    for _, value in ipairs(ide_plugins) do
       table.insert(plugin_config_order, value) 
    end
end

for _, value in ipairs(plugin_config_order) do
    
    local module = require("plugins." .. value)

    module.config()
end

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
