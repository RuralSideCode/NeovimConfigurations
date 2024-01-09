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

-- Nvim Web-dev Icons
require('nvim-web-devicons').get_icons()

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
