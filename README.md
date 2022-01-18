# Neovim Config

> Neovim the way I like it :)

## Structure

```
.
├── init.lua
├── lua
│   ├── colorscheme.lua
│   ├── keymaps.lua
│   ├── lsp
│   │   ├── init.lua
│   │   ├── [lang].lua
│   ├── plugins
│   │   ├── [plugin].lua
│   │   └──── [plugin]
│   │         ├── fns.lua
│   │         ├── init.lua
│   │         └── mappings.lua
│   ├── settings.lua
│   └── statusline.lua
└── README.md

6 directories, 27 files

```

- `init.lua` import all the other lua files
- `lua/` contains the actual settings
	- `settings.lua` contains what used to be `set`
	- `colorscheme.lua` sets the colorscheme
	- `statusline.lua` creates the custom statusline
	- `plugins/` contain all plugins
		- `init.lua` contains the packer config
		- Every plugin has it's own file `[plugin].lua` with plugin specific settings and keymaps
		- If a plugin requires a lot of settings (like telescope) a folder can also be used
