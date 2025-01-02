# Description
This is my custom config for neovim.
# Setup
- In neovim run `PlugInstall` to install the plugins.
- Make sure to change the `plugin_directory` variable in `init.lua` to point to where your `init.lua` is
- The location for my `init.lua` is in `C:/Users/${User}/Appdata/Local/nvim/`
# Adding a Plugin
- Create a file in the `plugins` directory (for example `nvim-tree.lua`)
- Add the following:
```
return {
  url = "User/Repo",
  dependencies = {
    "DependencyOne",
    "DependencyTwo",
    "etc"
  },
  config = function()
    // Code
  end
}
```
- In `init.lua` add the file name to `module_install_order` and `module_config_order`
# Troubleshooting
## Executing PowerShell Scripts Opens Notepad
- Open a PowerShell script and set the default program to open it to PowerShell
    - This is located in `%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe`
