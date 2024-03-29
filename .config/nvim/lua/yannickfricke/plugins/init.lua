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
    use {
        "petertriho/cmp-git",
        requires = "nvim-lua/plenary.nvim"
    }

    -- Show small images (pictograms) in the code completions
    use 'onsails/lspkind.nvim'

    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/telescope.nvim'

    use 'nvim-lua/lsp-status.nvim'

    use 'L3MON4D3/LuaSnip'
    use 'lukas-reineke/lsp-format.nvim'

    use 'nvim-treesitter/nvim-treesitter'

    use 'onsails/diaglist.nvim'

    -- Work with GitHub in a fancy way
    use {
        'pwntester/octo.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim',
            'kyazdani42/nvim-web-devicons',
        },
        config = function()
            require "octo".setup()
        end
    }

    use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }

    use 'https://gitlab.com/yorickpeterse/nvim-pqf'

    use 'jiangmiao/auto-pairs'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

require('yannickfricke.plugins.bufferline')
require('yannickfricke.plugins.cmp')
require('yannickfricke.plugins.diaglist')
require('yannickfricke.plugins.lsp')
require('yannickfricke.plugins.nvim-tree')
require('yannickfricke.plugins.pqf')
require('yannickfricke.plugins.tabnine')
require('yannickfricke.plugins.treesitter')
require('yannickfricke.plugins.octo')
