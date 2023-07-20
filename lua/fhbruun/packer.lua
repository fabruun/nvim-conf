--v This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    use('OmniSharp/omnisharp-vim')

    use {
        'christoomey/vim-tmux-navigator',
        lazy = false
    }

    -- Themes
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'Shatur/neovim-ayu'

    use {
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require('nvim-tree')
        end
    }

    use 'eandrju/cellular-automaton.nvim'

    use({
        "epwalsh/obsidian.nvim",
        config = function()
            require("obsidian").setup({
                dir = "~/my-vault",
                -- see below for full list of options 👇
            })
        end,
    })

    use 'rust-lang/rust-analyzer'

    use 'mfussenegger/nvim-dap'
    use 'phpstan/vim-phpstan'
end)
