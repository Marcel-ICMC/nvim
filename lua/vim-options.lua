vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber")

vim.cmd("set foldenable")
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.cmd("set foldtext=getline(v:foldstart).'...'.trim(getline(v:foldend))")
vim.opt.foldlevelstart = 1

vim.g.mapleader = " "
