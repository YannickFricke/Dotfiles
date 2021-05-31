local utils = require 'yannickfricke.utils'

utils.key_mapper('n', '<leader>ff', ':Telescope find_files<CR>')
utils.key_mapper('n', '<leader>fg', ':Telescope live_grep<CR>')
utils.key_mapper('n', '<leader>fb', ':Telescope buffers<CR>')
utils.key_mapper('n', '<leader>fh', ':Telescope help_tags<CR>')
