local vim = vim
local o = vim.o
local bo = vim.bo
local wo = vim.wo

-- Global variables
vim.g.mapleader = ' '
vim.g.colors_name = 'sonokai'

o.mouse = "a"

-- NVIM should not create swap files
bo.swapfile = false

-- NVIM should try to automatically indent lines
bo.autoindent = true
bo.smartindent = true

o.termguicolors = true
o.syntax = 'on'
o.errorbells = false
o.smartcase = true
o.showmode = false
o.backup = false
o.undodir = vim.fn.stdpath('config') .. '/undodir'
o.undofile = true
o.incsearch = true
o.hidden = true
-- o.completeopt='menuone,noinsert,noselect'
o.completeopt='menuone,noselect'
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

-- Display line numbers
wo.number = true

-- Line numbers should be relative to the current line
wo.relativenumber = true
wo.signcolumn = 'yes'

-- Do not wrap lines
wo.wrap = false

vim.g.Omnisharp_server_stdio = 0

vim.cmd[[set shortmess+=c]]
-- vim.cmd[[highlight link CompeDocumentation NormalFloat]]

-- vim.cmd[[
-- autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
--     PlugInstall --sync | source $MYVIMRC
-- endif
-- ]]

require 'yannickfricke'
