vim.g.wordmotion_prefix = ','

-- vim.g.wildignore:append{
-- 	'*/node_modules',
-- 	'*/.git',
-- 	'*/build/*',
-- 	'*/venv/*',
-- 	'*/env/*',
-- 	'*/coverage/*',
-- 	'*/vendor/*',
-- 	'*/__pycache__/*',
-- }

require("config.lazy")
require("config.mason")
require("config.go")
require("config.java")

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

-- Ctrl-Space for autocomplete
vim.keymap.set('i', '<C-Space>', '<C-X><C-O>')

vim.keymap.set('n', '<Esc><Esc>', '<Esc>:nohlsearch<CR><Esc>', { noremap = true, silent = true })
