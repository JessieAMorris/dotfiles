require("config.lazy")
require("config.mason")
require("config.java")

vim.cmd 'colorscheme slate'

-- CommandT
vim.keymap.set('n', '<Leader>b', '<Plug>(CommandTBuffer)')
vim.keymap.set('n', '<Leader>j', '<Plug>(CommandTJump)')
vim.keymap.set('n', '<Leader>t', '<Plug>(CommandT)')

-- Undotree
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand('~/.vim/undodir')
vim.keymap.set('n', '<F5>', vim.cmd.UndotreeToggle)
