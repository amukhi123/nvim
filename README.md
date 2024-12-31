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
    "DependencyTwo"
  },
  config = function()
    // Code
  end
}
```
