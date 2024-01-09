local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = ' '

-- Normal Mode Key Map
local function nmap(keyCombo, vimAction, opts) opts = opts or {}; keymap('n', keyCombo, vimAction, opts) end

-- Window control
nmap('<leader>w', '<C-w>')

-- Neotree toggle
nmap('<C-n>', ':Neotree toggle<enter>')


