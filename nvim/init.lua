-- General
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.termguicolors = true

-- Disable netrw at the very start
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.mouse = "a"

-- Tab
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

-- UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.signcolumn = "yes"
vim.opt.signcolumn = "yes"
vim.opt.fillchars = { eob = " " }

-- Searching
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

require("maps")
require("lsp")

require("config.lazy")
require("config.treesitter")
require("config.whichkey")
require("config.ufo")
require("config.lualine")
require("config.colorscheme")
