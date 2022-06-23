utils = require('yannickfricke/utils')

print("Using Yannick Fricke's NVIM "..utils.SUPPORTED_VERSION.." configuration")

local vim = vim

-- Set the leader key to space
vim.g.mapleader = ' '

local o = vim.o
local bo = vim.bo
local wo = vim.wo

o.termguicolors = true
o.background = 'dark'
o.syntax = 'on'
o.errorbells = false
o.smartcase = true
o.showmode = false
bo.swapfile = false
o.backup = false
o.undodir = vim.fn.stdpath('config') .. '/undodir'
o.undofile = true
o.incsearch = true
o.hidden = true
o.completeopt='menuone,noinsert,noselect'
bo.autoindent = true
bo.smartindent = true

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
wo.number = true -- display line numbers
wo.relativenumber = true -- display relative line numbers
wo.signcolumn = 'yes'
wo.wrap = false

require('yannickfricke')
