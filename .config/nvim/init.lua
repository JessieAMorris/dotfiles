require("config.lazy")
require("config.mason")
require("config.java")

vim.cmd 'colorscheme slate'

vim.keymap.set('n', '<Leader>b', '<Plug>(CommandTBuffer)')
vim.keymap.set('n', '<Leader>j', '<Plug>(CommandTJump)')
vim.keymap.set('n', '<Leader>t', '<Plug>(CommandT)')
