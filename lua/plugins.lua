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

    -- Tree-sitter
    use('nvim-treesitter/nvim-treesitter')

    -- Plenary (lua lib)
    use('nvim-lua/plenary.nvim')

    -- Telescope (File finder)
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.5',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
end)

