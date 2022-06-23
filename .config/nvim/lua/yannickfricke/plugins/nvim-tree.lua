local utils = require('yannickfricke.utils')

require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = false,
	},
	filters = {
		dotfiles = false,
	},
})

