-- General
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
vim.wo.number = true
vim.wo.relativenumber = true

-- Disable netrw at the very start
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('options')
require('maps')
require('lsp')

require('config.lazy')
require('config.whichkey')
