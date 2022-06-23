utils = require('yannickfricke/utils')

print("Using Yannick Fricke's NVIM "..utils.SUPPORTED_VERSION.." configuration")

local vim = vim

vim.g.mapleader = ' '

require('yannickfricke')
