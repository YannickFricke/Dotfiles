local parsers = require 'nvim-treesitter.parsers'
local configs = require 'nvim-treesitter.configs'

configs.setup {
    ensure_installed = "maintained",
    matchup = {},
    autotag = {
        enable = true,
    },
    indent = {
        enable = true
    },
    highlight = {
        enable = true,
    },
    rainbow = {
        enable = true
    },
    playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  }
}

local parser_configs = parsers.get_parser_configs()
parser_configs.html.used_by = 'svelte'
