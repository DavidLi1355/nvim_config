-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use {
        "wbthomason/packer.nvim"
    }

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    use {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",
    }

    use {
        "catppuccin/nvim", as = "catppuccin"
    }

    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.1",
        -- or                            , branch = "0.1.x",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    use {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use {
        "ThePrimeagen/harpoon"
    }

    use {
        "mbbill/undotree"
    }

    use {
        "nvim-tree/nvim-tree.lua",
        "nvim-tree/nvim-web-devicons", -- optional, for file icons
    }

    use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' }

    use {
        "tpope/vim-commentary",
        "tpope/vim-surround"
    }

    use {
        "ggandor/leap.nvim"
    }

    -- mini
    use {
        'echasnovski/mini.jump',
        'echasnovski/mini.pairs',
        'echasnovski/mini.indentscope',
        'echasnovski/mini.move',
        branch = 'stable',
    }
end)
