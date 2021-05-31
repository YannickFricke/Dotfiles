local utils = require 'yannickfricke/utils'

utils.key_mapper('n', '<leader>wc', ':lua require("git-worktree").create_worktree(vim.fn.input("Worktree name > "), vim.fn.input("Worktree upstream > "))<CR>')
utils.key_mapper('n', '<leader>ws', ':lua require("telescope").extensions.git_worktree.git_worktrees()<CR>')
utils.key_mapper('n', '<leader>wd', ':lua require("git-worktree").delete_worktree(vim.fn.input("Worktree name > "))<CR>')
