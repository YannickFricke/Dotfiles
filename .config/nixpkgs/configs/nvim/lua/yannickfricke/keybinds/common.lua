local utils = require 'yannickfricke.utils'

utils.key_mapper('', '<leader>', '<nop>')

utils.key_mapper('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>')

utils.key_mapper('n', '<leader>t', ':FloatermToggle<CR>')
utils.key_mapper('t', '<ESC>', '<C-\\><C-N>')

-- Switch to the last open buffer by pressing the leader key two times
utils.key_mapper('n', '<leader><leader>', ':b#<CR>')

-- Window navigation
utils.key_mapper('n', '<leader>h', ':wincmd h<CR>')
utils.key_mapper('n', '<leader>j', ':wincmd j<CR>')
utils.key_mapper('n', '<leader>k', ':wincmd k<CR>')
utils.key_mapper('n', '<leader>l', ':wincmd l<CR>')

-- Resize buffers
utils.key_mapper('n', '<leader>+', ':vertical resize +5<CR>')
utils.key_mapper('n', '<leader>-', ':vertical resize -5<CR>')
