local parsers = require 'nvim-treesitter.parsers'
local configs = require 'nvim-treesitter.configs'

configs.setup {
    ensure_installed = "maintained",
    matchup = {},
    indent = {
        enable = true
    },
    highlight = {
        enable = true,
    },
    rainbow = {
        enable = true
    }
}

local parser_configs = parsers.get_parser_configs()
parser_configs.html.used_by = 'svelte'
