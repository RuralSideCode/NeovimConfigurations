

return require('packer').startup(function(use)
    -- Packer
    use('wbthomason/packer.nvim')

    -- Gruvbox
    use('ellisonleao/gruvbox.nvim')

    -- Neo-tree
    use {"nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { 
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
        }
    }
	
end)

