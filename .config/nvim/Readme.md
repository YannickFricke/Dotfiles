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
| lspkind.nvim       | Show small images (pictograms in nvim-cmp)                 | https://github.com/onsails/lspkind.nvim            |
| octo.nvim          | Interact with GitHub in a nice way                         | https://github.com/pwntester/octo.nvim             |
| bufferline.nvim    | Display file tabs on the top like every other editor       | https://github.com/akinsho/bufferline.nvim         |
| nvim-pqf           | Prettier quickfix/location list windows for NeoVim         | https://gitlab.com/yorickpeterse/nvim-pqf          |
| auto-pairs         | Automatically inserts closing brackets                     | https://github.com/jiangmiao/auto-pairs            |
| LuaSnip            | Management of snippets                                     | https://github.com/L3MON4D3/LuaSnip                |
| lsp-status.nvim    | Obtain LSP-specific elements for your status line          | https://github.com/nvim-lua/lsp-status.nvim        |
| lsp-format.nvim    | Formats the buffer on save using the LSP                   | https://github.com/lukas-reineke/lsp-format.nvim   |

## Keybinds

| Mode   | Keybind         | Action                                                        | Description                                        |
| :----- | :--------       | :-------                                                      | :------------                                      |
| normal | `<leader>ne`    | `NvimTreeToggle<CR>`                                          | Open NvimTree                                      |
| visual | `<leader><Bar>` | `EasyAlign*<Bar><Enter>`                                      | Format GHFM table                                  |
| normal | `<leader>dw`    | `lua require('diaglist').open_all_diagnostics()<cr>`          | Open diagnostics for the whole directory           |
| normal | `<leader>d0`    | `lua require('diaglist').open_buffer_diagnostics()<cr>`       | Open diagnostics for the current buffer            |
| normal | Ctrl + `p`      | `lua require"yannickfricke.utils.telescope".find_files()<CR>` | Open the file search based on Telescope            |
| normal | Ctrl + `l`      | lua require"telescope.builtin".resume()<CR>')                 | Reopen the previous file search based on Telescope |
