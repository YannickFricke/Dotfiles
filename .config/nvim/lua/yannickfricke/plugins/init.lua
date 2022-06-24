local utils = require('yannickfricke.utils')
local packer_bootstrap = utils.InstallPacker()

require('packer').startup(function(use)
    -- Use the monokai color scheme
    use {
        'tanvirtin/monokai.nvim',
        config = function()
            require('monokai').setup {}
        end
    }

    -- A filetree written in LUA
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- Easily align source code
    use { 'junegunn/vim-easy-align' }

    -- Code completions + LSP
    use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-cmdline'
    use 'jose-elias-alvarez/nvim-lsp-ts-utils'
    use 'onsails/lspkind-nvim'
    use {
        'tzachar/cmp-tabnine',
        run = './install.sh',
        requires = 'hrsh7th/nvim-cmp'
    }

    use 'nvim-lua/lsp-status.nvim'

    use 'L3MON4D3/LuaSnip'
    use 'lukas-reineke/lsp-format.nvim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

require('yannickfricke.plugins.cmp')
require('yannickfricke.plugins.lsp')
require('yannickfricke.plugins.nvim-tree')
require('yannickfricke.plugins.tabnine')
