

return require('packer').startup(function(use)
    -- Packer
    use('wbthomason/packer.nvim')

    -- Gruvbox
    use('ellisonleao/gruvbox.nvim')

    -- Icons
    use('nvim-tree/nvim-web-devicons')

    -- Neo-tree
    use {"nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
          "nvim-lua/plenary.nvim",
          "MunifTanjim/nui.nvim",
        }
    }

    -- Conquer of Completion (Autocomplete)
    use {'neoclide/coc.nvim', branch = 'release'}
end)

