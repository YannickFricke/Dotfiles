local utils = require('yannickfricke.utils')

-- Navigation related mappings
utils.key_mapper('n', '<leader>h', ':wincmd h<CR>')
utils.key_mapper('n', '<leader>j', ':wincmd j<CR>')
utils.key_mapper('n', '<leader>k', ':wincmd k<CR>')
utils.key_mapper('n', '<leader>l', ':wincmd l<CR>')
utils.key_mapper('n', '<leader>+', ':vertical resize +5<CR>')
utils.key_mapper('n', '<leader>-', ':vertical resize -5<CR>')

-- Buffer related mappings
utils.key_mapper('n', '<leader><leader>', ':b#<CR>')

-- Files related mappings
utils.key_mapper('n', '<C-p>', ':lua require"yannickfricke.utils.telescope".find_files()<CR>')
utils.key_mapper('n', '<C-l>', ':lua require"telescope.builtin".resume()<CR>')
