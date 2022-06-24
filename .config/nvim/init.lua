local utils = require('yannickfricke/utils')

print("Using Yannick Fricke's NVIM " .. utils.SUPPORTED_VERSION .. " configuration")

-- Make the global vim variable available as local variable
local vim = vim

-- Set the leader key to space
vim.g.mapleader = ' '

-- o == option
local o = vim.o

-- bo == buffer-local options
local bo = vim.bo

-- wo == window-local options
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
o.completeopt = 'menuone,noinsert,noselect'
bo.autoindent = true
bo.smartindent = true
o.mouse = 'a'

-- 4 tabs are the best!
-- Change my mind
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

-- display line numbers
wo.number = true

-- display relative line numbers
wo.relativenumber = true

-- Enable the "sign colum"
-- The "sign column" is a tiny column on the left side of the editor.
-- It can display characters or small images (pictograms).
wo.signcolumn = 'yes'

-- Do not wrap lines automatically
wo.wrap = false

require('yannickfricke')
