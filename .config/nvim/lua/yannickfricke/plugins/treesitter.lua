local parsers = require 'nvim-treesitter.parsers'
local configs = require 'nvim-treesitter.configs'

configs.setup {
    ensure_installed = {
        'bash',
        'comment',
        'css',
        'dockerfile',
        'dot',
        'graphql',
        'help',
        'html',
        'javascript',
        'jsdoc',
        'json',
        'lua',
        'make',
        'markdown',
        'regex',
        'scss',
        'svelte',
        'todotxt',
        'tsx',
        'typescript',
        'vim',
        'yaml',
    },
    highlight = {
        enable = true,
        disable = { "c", "rust" },
    },
}

parsers.html = 'svelte'
