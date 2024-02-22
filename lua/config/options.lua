local opt, g = vim.opt, vim.g

g.mapleader = " "
g.maplocalleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

opt.nu = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.wrap = false

opt.swapfile = false

opt.backup = false

opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

opt.colorcolumn = "80"

opt.clipboard = "unnamedplus"
