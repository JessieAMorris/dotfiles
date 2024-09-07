vim.g.wordmotion_prefix = ','

require("config.lazy")
require("config.mason")
require("config.go")

vim.cmd 'colorscheme slate'
vim.cmd 'set number'

-- CommandT
vim.keymap.set('n', '<Leader>b', '<Plug>(CommandTBuffer)')
vim.keymap.set('n', '<Leader>j', '<Plug>(CommandTJump)')
vim.keymap.set('n', '<Leader>t', '<Plug>(CommandTGit)')

-- Undotree
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand('~/.vim/undodir')
vim.keymap.set('n', '<F5>', vim.cmd.UndotreeToggle)

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.listchars = {
	tab = '| ',
	trail = '·',
	nbsp = '¤',
	lead = '·',
}
vim.opt.list = true
