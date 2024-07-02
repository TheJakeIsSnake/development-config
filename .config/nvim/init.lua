local o = vim.opt
local g = vim.g
o.compatible = false
o.showmatch = true
o.ignorecase = true
o.mouse = a
o.hlsearch = true
o.incsearch = true
o.tabstop = 2
o.softtabstop=2
o.expandtab = true
o.shiftwidth = 2
o.autoindent = true
o.number = true
o.wildmode = longest,list
o.ttyfast = true
o.swapfile = false
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1


require("config.lazy")
require("lazy").setup("plugins")
require("nvim-tree").setup()
