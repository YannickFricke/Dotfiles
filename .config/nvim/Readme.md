# NVIM configuration

Tested NVIM version: 0.7.0

Config type: LUA

LUA package manager: [packer](https://github.com/wbthomason/packer.nvim)

## Used plugins

| Name               | Description                                                | Homepage                                           |
| ---                | ---                                                        | ---                                                |
| nvim-tree.lua      | A file tree written in LUA with support for filetype icons | https://github.com/kyazdani42/nvim-tree.lua        |
| vim-easy-align     | Align quickly source code                                  | https://github.com/junegunn/vim-easy-align         |
| nvim-lsp-installer | Automates the installation of language servers             | https://github.com/williamboman/nvim-lsp-installer |
| diaglist.nvim      | Show LSP diagnostics in a separate buffer                  | https://github.com/onsails/diaglist.nvim           |

## Keybinds

| Mode   | Keybind         | Action                                                  | Description                              |
| :----- | :--------       | :-------                                                | :------------                            |
| normal | `<leader>ne`    | `NvimTreeToggle<CR>`                                    | Open NvimTree                            |
| visual | `<leader><Bar>` | `EasyAlign*<Bar><Enter>`                                | Format GHFM table                        |
| normal | `<leader>dw`    | `lua require('diaglist').open_all_diagnostics()<cr>`    | Open diagnostics for the whole directory |
| normal | `<leader>d0`    | `lua require('diaglist').open_buffer_diagnostics()<cr>` | Open diagnostics for the current buffer  |
