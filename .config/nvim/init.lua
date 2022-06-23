utils = require('yannickfricke/utils')

local vim = vim

vim.g.mapleader = ' '

print("Using Yannick Frickes NVIM "..utils.SUPPORTED_VERSION.." configuration")

require('yannickfricke')
