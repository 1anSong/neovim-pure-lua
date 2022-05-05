# Neovim configuration file

## Dependencies
- [ccls](https://github.com/MaskRay/ccls)
- [pyright](https://github.com/microsoft/pyright)
- [lua-language-server](https://github.com/sumneko/lua-language-server)
- [fzf](https://github.com/junegunn/fzf#using-git)

## Notices
- if your linux distribution is debian/ubuntu,please do **NOT**  install fzf  through package manager


## File structure overview
```
.
├── init.lua
├── init.vim.bak
├── lua
│   ├── basic.lua
│   ├── colorscheme.lua
│   ├── keybindings.lua
│   ├── lsp
│   │   ├── cmp.lua
│   │   ├── config
│   │   │   ├── ccls.lua
│   │   │   ├── lua.lua
│   │   │   └── pyright.lua
│   │   ├── setup.lua
│   │   └── ui.lua
│   ├── plugin-config
│   │   ├── bufferline.lua
│   │   ├── dashboard.lua
│   │   ├── lualine.lua
│   │   ├── nvim-tree.lua
│   │   └── nvim-treesitter.lua
│   └── plugins.lua
├── plugin
│   └── packer_compiled.lua
└── README
```


