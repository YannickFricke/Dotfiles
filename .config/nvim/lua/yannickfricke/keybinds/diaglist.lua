local utils = require('yannickfricke.utils')

utils.key_mapper('n', '<leader>dw', ':lua require(\'diaglist\').open_all_diagnostics()<cr>')
utils.key_mapper('n', '<leader>d0', ':lua require(\'diaglist\').open_buffer_diagnostics()<cr>')
