local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = ' '

-- Normal Mode Key Map
function nmap(lhs, rhs) keymap('n', lhs, rhs, {}) end

nmap('<leader>ff', ':set number!<enter>')
