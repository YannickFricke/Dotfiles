local utils = require('yannickfricke.utils')

-- Navigation related mappings
utils.key_mapper('n', '<leader>h', ':wincmd h<CR>')
utils.key_mapper('n', '<leader>j', ':wincmd j<CR>')
utils.key_mapper('n', '<leader>k', ':wincmd k<CR>')
utils.key_mapper('n', '<leader>l', ':wincmd l<CR>')
utils.key_mapper('n', '<leader>+', ':vertical resize +5<CR>')
utils.key_mapper('n', '<leader>-', ':vertical resize -5<CR>')
