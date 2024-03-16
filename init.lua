--[[  LUA BINDINGS
    vim.g: global variables (g:)
    vim.b: variables for the current buffer (b:)
    vim.w: variables for the current window (w:)
    vim.t: variables for the current tabpage (t:)
    vim.v: predefined Vim variables (v:)
    vim.env: environment variables defined in the editor session 
]]

-- Custom lua scripts
require('plugins')
require('keybinds')

function VimSet(option, value)
    local cmd = ':set ' .. option
    if value then cmd = cmd .. '=' .. value end
    vim.cmd(cmd)
end

-- Set tab width
VimSet('tabstop', 4)
VimSet('shiftwidth', 4)
VimSet('expandtab')

-- Line numbers
VimSet('number')

-- Line wrapping
VimSet('nowrap')

-- Color-scheme
VimSet('background', 'dark')
vim.cmd.colorscheme('gruvbox')

-- Font
VimSet('guifont', 'RobotoMono')
VimSet('encoding', 'utf-8')

-- Neotree configurations
require('neo-tree').setup {
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false
        }
    },
    window = { width = 23 }
}

-- Tree-sitter Config
require('nvim-treesitter.configs').setup {
    ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query' },
    sync_install = false,
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true }
}

-- Telescope Config
require('telescope').setup{
    defaults = {
        mappings = require('keybinds').telescope
    }
}

require("toggleterm").setup{
    -- size can be a number or function which is passed the current terminal
    size = 20,
    persist_size = true,
    persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
    direction = 'float',
}
