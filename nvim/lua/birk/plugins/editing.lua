return {
    -- Smart indentation based on buffer, editorconfig etc
    {
        'tpope/vim-sleuth',
        tag = 'v2.0',
    },
    -- Ease commenting of code
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end,
    },
    -- Split/join blocks of code
    {
        'Wansmer/treesj',
        keys = {
            '<leader>m',
        },
        dependencies = {
            'nvim-treesitter/nvim-treesitter',
        },
        config = function()
            require('treesj').setup()
        end,
    }

}
