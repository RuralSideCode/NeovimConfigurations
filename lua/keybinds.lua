local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = ' '

-- Normal Mode Key Map
local function nmap(keyCombo, vimAction, opts) opts = opts or {}; keymap('n', keyCombo, vimAction, opts) end

-- Window control
nmap('<leader>w', '<C-w>')

-- Neotree toggle
nmap('<C-n>', ':Neotree toggle<enter>')

-- Telescope bindings
local tel = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', tel.find_files, {})
vim.keymap.set('n', '<leader>fg', tel.live_grep, {})
vim.keymap.set('n', '<leader>fb', tel.buffers, {})
vim.keymap.set('n', '<leader>fh', tel.help_tags, {})
